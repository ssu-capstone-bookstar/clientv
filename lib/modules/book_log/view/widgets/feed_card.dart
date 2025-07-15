import 'package:flutter/material.dart';
import 'package:book/common/theme/style/app_texts.dart';

// TODO: 실제 asset 경로로 교체 및 피그마 업데이트 되면 구현
const String dummyProfileImage = 'assets/images/sample_book.jpg';
const String dummyBookCover = 'assets/images/sample_book.jpg';

/// 피드 카드 위젯 (피그마 디자인 기반)
/// - 프로필, 닉네임, 날짜, 본문, 책 커버, 버튼 등 포함
/// - 각 요소별로 TODO 주석 참고하여 실제 데이터/스타일로 교체 필요
class FeedCard extends StatelessWidget {
  const FeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16), // TODO: 피그마 spacing 일치
      decoration: BoxDecoration(
        color: Colors.white, // TODO: ColorName.b1 등 AppTheme 적용
        borderRadius: BorderRadius.circular(12), // TODO: AppBorders 등 적용
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20, // TODO: 피그마 radius 일치
                backgroundImage:
                    AssetImage(dummyProfileImage), // TODO: 실제 프로필 이미지로 교체
                backgroundColor: Color(0xFFF5F5F5), // TODO: ColorName.g7 등 적용
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '닉네임',
                    style: AppTexts.b7.copyWith(
                      color: Color(0xFF222222), // TODO: ColorName 적용
                      fontWeight: FontWeight.w700, // TODO: 피그마 weight 일치
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '2024.06.01',
                    style: AppTexts.b10.copyWith(
                      color: Color(0xFFB0B0B0), // TODO: ColorName 적용
                      fontWeight: FontWeight.w400, // TODO: 피그마 weight 일치
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_vert,
                    color: Color(0xFFB0B0B0)), // TODO: 실제 피그마 아이콘, 컬러 적용
                onPressed: () {
                  // TODO: 실제 기능 연결
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('피드 카드 더보기 클릭됨')),
                  );
                },
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8), // TODO: 피그마 borderRadius 일치
            child: Image.asset(
              dummyBookCover, // TODO: 실제 책 커버 이미지로 교체
              height: 120, // TODO: 피그마 height 일치
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '여기에 피드 내용이 들어갑니다. 최대 2줄까지 표시됩니다.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTexts.b6.copyWith(
              color: Color(0xFF222222), // TODO: ColorName, 스타일 적용
              fontWeight: FontWeight.w400, // TODO: 피그마 weight 일치
              fontSize: 16, // TODO: 피그마 fontSize 일치
            ),
          ),
          const SizedBox(height: 12),
          // TODO: 실제 버튼/태그/기타 요소로 교체
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // TODO: 실제 기능 연결
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('버튼 클릭됨')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF654AEF), // TODO: ColorName.p1 등 적용
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // TODO: 피그마 borderRadius 일치
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 12), // TODO: 피그마 padding 일치
                elevation: 0,
              ),
              child: Text(
                '버튼',
                style: AppTexts.b7.copyWith(
                  color: Colors.white, // TODO: ColorName.w1 등 적용
                  fontWeight: FontWeight.w600, // TODO: 피그마 weight 일치
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
