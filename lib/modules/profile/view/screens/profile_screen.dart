import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/update_profile_request.dart';
import '../../repository/profile_repository.dart';
import '../../view_model/profile_view_model.dart';
import '../../../../common/components/cta_button_l1.dart';
import 'profile_nickname_field.dart';
import 'profile_introduction_field.dart';
import 'profile_image_section.dart';
import 'profile_book_section.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  late TextEditingController _nicknameController;
  late TextEditingController _introductionController;

  String? _originalNickname;
  String? _originalIntroduction;
  bool _isEdited = false;

  @override
  void initState() {
    super.initState();
    _nicknameController = TextEditingController();
    _introductionController = TextEditingController();
    _nicknameController.addListener(_onEdit);
    _introductionController.addListener(_onEdit);
  }

  void _onEdit() {
    setState(() {
      _isEdited =
          (_nicknameController.text.trim() != (_originalNickname ?? '')) ||
              (_introductionController.text.trim() !=
                  (_originalIntroduction ?? ''));
    });
  }

  @override
  void dispose() {
    _nicknameController.removeListener(_onEdit);
    _introductionController.removeListener(_onEdit);
    _nicknameController.dispose();
    _introductionController.dispose();
    super.dispose();
  }

  void _onSaveProfile(
      WidgetRef ref, BuildContext context, AsyncValue profileAsync) async {
    final nickname = _nicknameController.text.trim();
    final introduction = _introductionController.text.trim();
    if (nickname.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('닉네임을 입력해주세요.')),
      );
      return;
    }
    final profile = profileAsync.value;
    if (profile == null) return;
    final request = UpdateProfileRequest(
      nickName: nickname,
      profileImageUrl: '', // TODO: 이미지 변경 하도록 바꾸기
      introduction: introduction,
    );
    final repository = ref.read(profileRepositoryProvider);
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => const Center(child: CircularProgressIndicator()),
      );
      await repository.updateMyProfile(request);
      if (context.mounted) {
        ref.invalidate(profileProvider);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('프로필이 저장되었습니다.')),
        );
        context.pop(); // 이전 화면으로 이동
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.of(context).pop(); // 로딩 다이얼로그 닫기
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('저장 실패: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final profileAsync = ref.watch(profileProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('프로필 편집'),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => context.pop(),
        ),
      ),
      body: profileAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('에러 발생: $e')),
        data: (profile) {
          if (profile == null) {
            return const Center(child: Text('프로필 정보가 없습니다.'));
          }
          if (_originalNickname != profile.nickName ||
              _originalIntroduction != profile.introduction) {
            _originalNickname = profile.nickName;
            _originalIntroduction = profile.introduction;
            _nicknameController.text = profile.nickName;
            _introductionController.text = profile.introduction;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted) setState(() => _isEdited = false);
            });
          }
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  ProfileImageSection(imageUrl: profile.profileImageUrl),
                  const SizedBox(height: 24),
                  ProfileNicknameField(controller: _nicknameController),
                  const Divider(),
                  ProfileIntroductionField(controller: _introductionController),
                  const Divider(),
                  ProfileBookSection(),
                  const Divider(),
                  const Spacer(),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 54),
        child: CtaButtonL1(
          text: '저장하기',
          enabled: _isEdited,
          onPressed: () => _onSaveProfile(ref, context, profileAsync),
        ),
      ),
    );
  }
}
