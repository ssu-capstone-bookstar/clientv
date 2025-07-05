import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/theme/app_colors.dart';
import '../../model/update_profile_request.dart';
import '../../repository/profile_repository.dart';
import '../../view_model/profile_view_model.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  late TextEditingController _nicknameController;
  late TextEditingController _introductionController;

  @override
  void initState() {
    super.initState();
    _nicknameController = TextEditingController();
    _introductionController = TextEditingController();
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    _introductionController.dispose();
    super.dispose();
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
          // 여기서 컨트롤러의 text만 갱신
          _nicknameController.text = profile.nickName;
          _introductionController.text = profile.introduction;
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        // TODO: 이미지 변경 기능(3-1)
                      },
                      child: CircleAvatar(
                        radius: 48,
                        backgroundImage: profile.profileImageUrl.isNotEmpty
                            ? NetworkImage(profile.profileImageUrl)
                            : null,
                        child: profile.profileImageUrl.isEmpty
                            ? const Icon(Icons.person,
                                size: 48, color: Colors.grey)
                            : null,
                        backgroundColor: Colors.grey[800],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                        child: const Text('닉네임',
                            style: TextStyle(color: Colors.grey)),
                      ),
                      Expanded(
                        child: Container(
                          color: AppColors.backgroundBlack,
                          child: TextFormField(
                            controller: _nicknameController,
                            decoration: const InputDecoration(
                              hintText: '닉네임을 입력하세요',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: AppColors.backgroundBlack,
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                        child: const Text('소개',
                            style: TextStyle(color: Colors.grey)),
                      ),
                      Expanded(
                        child: Container(
                          color: AppColors.backgroundBlack,
                          child: TextFormField(
                            controller: _introductionController,
                            decoration: const InputDecoration(
                              hintText: '소개를 작성해 보세요',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: AppColors.backgroundBlack,
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  // 픽한 도서 편집
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                        child: const Text('픽한 도서',
                            style: TextStyle(color: Colors.grey)),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // TODO: 네비게이션(3-2)
                          },
                          child: Container(
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: const Icon(Icons.chevron_right),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  // 독서 중 도서 편집
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                        child: const Text('독서 중',
                            style: TextStyle(color: Colors.grey)),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // TODO: 네비게이션(3-2)
                          },
                          child: Container(
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: const Icon(Icons.chevron_right),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  // 완독 도서 편집
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                        child: const Text('완독 도서',
                            style: TextStyle(color: Colors.grey)),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // TODO: 네비게이션(3-2)
                          },
                          child: Container(
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: const Icon(Icons.chevron_right),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  const Spacer(),
                  // 저장 버튼은 bottomNavigationBar로 이동
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 24),
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: () async {
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
                  builder: (_) =>
                      const Center(child: CircularProgressIndicator()),
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
            },
            child: const Text('저장하기'),
          ),
        ),
      ),
    );
  }
}
