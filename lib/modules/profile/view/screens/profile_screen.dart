import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/update_profile_request.dart';
import '../../repository/profile_repository.dart';
import '../../view_model/profile_view_model.dart';
import '../../../../common/components/button/cta_button_l1.dart';
import '../../../../common/components/button/text_button.dart';
import '../../../auth/view_model/auth_state.dart';
import '../../../auth/view_model/auth_view_model.dart';
import '../../../book_log/view_model/book_log_view_model.dart';
import 'package:book/modules/profile/view/widgets/profile_name_and_introduction_field.dart';
import 'package:book/modules/profile/view/widgets/profile_image_section.dart';

void invalidateMyProfileProviders(WidgetRef ref, int myMemberId) {
  ref.invalidate(profileProvider(null));
  ref.invalidate(profileProvider(myMemberId));
  ref.invalidate(bookLogProfileProvider(myMemberId));
}

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
        // 내 memberId 가져오기
        final authState = ref.read(authViewModelProvider).value;
        final myMemberId =
            (authState is AuthSuccess) ? authState.memberId : null;
        if (myMemberId != null) {
          invalidateMyProfileProviders(ref, myMemberId);
        } else {
          ref.invalidate(profileProvider(null));
        }
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
    final profileAsync = ref.watch(profileProvider(null));
    return Scaffold(
      appBar: AppBar(
        title: const Text('프로필 편집'),
        titleTextStyle: AppTexts.b5.copyWith(color: ColorName.w1),
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  ProfileImageSection(imageUrl: profile.profileImageUrl),
                  const SizedBox(height: 24),
                  ProfileNameAndIntroductionField(
                    nicknameController: _nicknameController,
                    introductionController: _introductionController,
                  ),
                  CustomTextButton(
                    label: '픽한 도서 편집',
                    onTap: () {
                      // TODO: 픽한 도서 편집 페이지로 이동
                    },
                  ),
                  CustomTextButton(
                    label: '독서 중 도서 편집',
                    onTap: () {
                      // TODO: 독서 중 도서 편집 페이지로 이동
                    },
                  ),
                  CustomTextButton(
                    label: '완독 도서 편집',
                    onTap: () {
                      // TODO: 완독 도서 편집 페이지로 이동
                    },
                  ),
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
