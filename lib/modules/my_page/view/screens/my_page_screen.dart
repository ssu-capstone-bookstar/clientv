import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../common/components/text_button.dart';

class MyPageScreen extends ConsumerStatefulWidget {
  const MyPageScreen({super.key});

  @override
  ConsumerState<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends ConsumerState<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('마이페이지'),
        titleTextStyle: AppTexts.b5.copyWith(color: ColorName.w1),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Text('회원 정보', style: AppTexts.b5.copyWith(color: ColorName.w1)),
              const SizedBox(height: 8),
              CustomTextButton(
                label: '로그인 정보',
                onTap: () {
                  // TODO: 로그인 정보 페이지로 이동
                },
              ),
              CustomTextButton(
                label: '회원 탈퇴',
                onTap: () {
                  // TODO: 회원 탈퇴 페이지로 이동
                },
              ),
              const SizedBox(height: 35),
              Text('활동 정보', style: AppTexts.b5.copyWith(color: ColorName.w1)),
              const SizedBox(height: 8),
              CustomTextButton(
                label: '고객 센터',
                onTap: () {
                  // TODO: 고객 센터 페이지로 이동
                },
              ),
              const SizedBox(height: 35),
              Text('활동 내역', style: AppTexts.b5.copyWith(color: ColorName.w1)),
              const SizedBox(height: 8),
              CustomTextButton(
                label: '좋아요 누른 다이어리',
                onTap: () {
                  // TODO: 좋아요 누른 다이어리 페이지로 이동
                },
              ),
              CustomTextButton(
                label: '스크랩한 다이어리',
                onTap: () {
                  // TODO: 스크랩한 다이어리 페이지로 이동
                },
              ),
              CustomTextButton(
                label: '팔로워 관리',
                onTap: () {
                  // TODO: 팔로워 관리 페이지로 이동
                },
              ),
              CustomTextButton(
                label: '챌린지 중단 도서',
                onTap: () {
                  // TODO: 챌린지 중단 도서 페이지로 이동
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
