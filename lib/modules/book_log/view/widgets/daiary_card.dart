import 'package:flutter/material.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/modules/book_log/view/widgets/star_badge.dart';
import 'package:flutter_svg/svg.dart';

// TODO: 실제 asset 경로로 교체 및 피그마 업데이트 되면 구현
const String dummyBookCover = 'assets/images/sample_book.jpg';

class DiaryCard extends StatefulWidget {
  const DiaryCard({super.key});

  @override
  State<DiaryCard> createState() => _DiaryCardState();
}

class _DiaryCardState extends State<DiaryCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              dummyBookCover, // TODO: 실제 사진 데이터로 교체
              height: 368,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 2.4, right: 2.4, top: 4.74, bottom: 4.74),
                          child: SvgPicture.asset(
                            Assets.icons.icHeart.path,
                            width: 19.257953643798828,
                            height: 16.4473819732666,
                          ),
                        ),
                        const SizedBox(width: 3),
                        Text(
                          '335', // TODO: 실제 데이터로 교체
                          style: AppTexts.b10.copyWith(color: ColorName.w1),
                        ),
                        const SizedBox(width: 6),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 3, right: 3, top: 3, bottom: 3),
                          child: SvgPicture.asset(
                            Assets.icons.icMessage.path,
                            width: 18,
                            height: 18,
                          ),
                        ),
                        const SizedBox(width: 3),
                        Text(
                          '335', // TODO: 실제 데이터로 교체
                          style: AppTexts.b10.copyWith(color: ColorName.w1),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 4, right: 4, top: 3, bottom: 3),
                    child: SvgPicture.asset(
                      Assets.icons.icScrap.path,
                      width: 16,
                      height: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: ColorName.g7,
              height: 0,
              thickness: 1,
              indent: 16,
              endIndent: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '인간실격', // TODO: 실제 책 제목 데이터로 교체
                                    style: AppTexts.b7
                                        .copyWith(color: ColorName.p1),
                                  ),
                                  const SizedBox(width: 3),
                                  StarBadge(rating: 3.5), // TODO: 실제 별점 데이터로 교체
                                ],
                              ),
                              Text(
                                '다자이오사무', // TODO: 실제 책 저자 데이터로 교체
                                style:
                                    AppTexts.b11.copyWith(color: ColorName.p6),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        '2025.06.29',
                        style: AppTexts.b10.copyWith(color: ColorName.g3),
                      ), // TODO: 실제 작성 날짜 데이터로 교체
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    // TODO: 실제 내용 추가 필요
                    '그가 말하고 있는 인간 실격은 인간세상에 편입되지 못한 자기 파괴로 인한\n찌질한 새외적 인간을 말하는 것이 아니라 인간들에 대한 차가운 평가를\n통해 인간사회의 허무함을 말하며, 기만과 이기심으로 점철된 인간 사회에\n대해 처절하게 거부한 저항을 뜻하는 단어이다.\n\n다자이 오사무를 허무주의적 인상을 풍기는 자연주의 작가일 거라 막연한\n예상을 가지고 읽기 시작했지만 운명에 휘둘리는 인간이 아닌 인간의 실존에\n대한 깊은 탐구가 담겨 있다. \n\n1930년대 쓰여진 작품이라기엔 세련된 울림을 준다.\n\n그가 말하고 있는 인간 실격은 인간세상에 편입되지 못한 자기 파괴로 인한\n찌질한 새외적 인간을 말하는 것이 아니라 인간들에 대한 차가운 평가를\n통해 인간사회의 허무함을 말하며, 기만과 이기심으로 점철된 인간 사회에\n대해 처절하게 거부한 저항을 뜻하는 단어이다.',
                    maxLines: isExpanded ? null : 10,
                    overflow: isExpanded ? null : TextOverflow.ellipsis,
                    style: AppTexts.b10.copyWith(color: ColorName.w1),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Text(
                      isExpanded ? '닫기' : '더 보기',
                      style:
                          AppTexts.b11.copyWith(color: ColorName.g3).copyWith(
                                decoration: TextDecoration.underline,
                                decorationColor: ColorName.g3,
                                decorationThickness: 1,
                              ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
