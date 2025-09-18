import 'package:bookstar/common/components/custom_list_view.dart';
import 'package:bookstar/common/theme/style/app_paddings.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/reading_challenge/model/challenge_response.dart';
import 'package:bookstar/modules/reading_challenge/service/full_capture_service.dart';
import 'package:bookstar/modules/reading_challenge/view/widgets/save_success_image_dialog.dart';
import 'package:bookstar/modules/reading_challenge/view_model/ongoing_challenge_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ReadingChallengeScreen extends ConsumerStatefulWidget {
  const ReadingChallengeScreen({super.key});

  @override
  ConsumerState<ReadingChallengeScreen> createState() =>
      _ReadingChallengeScreenState();
}

class _ReadingChallengeScreenState
    extends ConsumerState<ReadingChallengeScreen> {
  final GlobalKey _screenKey = GlobalKey();

  Future<void> _onRefresh() async {
    final notifier = ref.read(ongoingChallengeViewModelProvider.notifier);
    await notifier.fetchChallenges();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ongoingChallengeViewModelProvider);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: state.challenges.when(
        data: (items) {
          final totalCount = items.length;
          final completedCount =
              items.where((element) => element.completed).length;
          return RefreshIndicator(
            onRefresh: _onRefresh,
            child: SingleChildScrollView(
              child: RepaintBoundary(
                key: _screenKey,
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context)
                        .size
                        .height, // 🔴 추가: 최소 높이를 화면 높이로 설정
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [
                        ColorName.b1,
                        ColorName.p1,
                      ],
                      stops: [0.1, 1],
                    ),
                  ),
                  padding: AppPaddings.SCREEN_BODY_PADDING,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Header
                      _buildHeaderSection(
                        totalCount: totalCount,
                        completedCount: completedCount,
                        onScreenShot: () async {
                          final result =
                              await FullCaptureService.captureAndShow(
                                  context, _screenKey);
                          bool? isSaved = result?['isSaved'];
                          if (isSaved == true && context.mounted) {
                            await showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                barrierColor:
                                    ColorName.b1.withValues(alpha: 0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20)),
                                ),
                                builder: (context) => SaveSuccessImageDialog());
                          }
                        },
                        onCalender: () {
                          /** 캘린더 */
                          // TODO: 포인트 내역
                        },
                        onNew: () {
                          /** 새로운책 읽기*/
                          context.go('/reading-challenge/search-new');
                        },
                      ),
                      SizedBox(height: 35),
                      // 리스트
                      _buildListSection(
                        items: items,
                        onTapItem: (item) {
                          final uri = Uri(
                            path: '/reading-challenge/detail/${item.book.id}',
                            queryParameters: {
                              'challengeId': item.challengeId.toString(),
                              'totalPages': item.totalPages.toString(),
                              'visibleDeleteChallenge': 'true',
                            },
                          );
                          context.push(uri.toString());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        error: _error("리딩챌린지 정보를 가져오는데 실패했습니다."),
        loading: _loading,
      ),
    );
  }

  // Header
  Widget _buildHeaderSection({
    required int totalCount,
    required int completedCount,
    required Function onScreenShot,
    required Function onCalender,
    required Function onNew,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: "지금까지 ",
                style: AppTexts.b5.copyWith(color: ColorName.g2),
                children: [
                  TextSpan(
                    text: "$totalCount",
                    style: AppTexts.h4.copyWith(color: ColorName.w1),
                  ),
                  TextSpan(text: "권 읽고"),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: "$completedCount",
                style: AppTexts.h4.copyWith(color: ColorName.w1),
                children: [
                  TextSpan(
                    text: "권 완독했어요!",
                    style: AppTexts.b5.copyWith(color: ColorName.g2),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            /** 캡처 */
            if (totalCount > 0)
              GestureDetector(
                onTap: () => onScreenShot(),
                child: Icon(Icons.crop_free, color: ColorName.w1),
              ),
            SizedBox(width: 8),
            /** 새로운 책 읽기 */
            GestureDetector(
              onTap: () => onNew(),
              child: Assets.icons.icPlus.svg(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildListSection(
      {required List<ChallengeResponse> items,
      required Function(ChallengeResponse) onTapItem}) {
    return Flexible(
      child: CustomListView(
          emptyIcon: Assets.icons.icBookpickSearchCharacter.svg(),
          emptyText: '읽던 책이 없네요!',
          emptyTextStyle: AppTexts.b8.copyWith(color: ColorName.w1),
          isEmpty: items.isEmpty,
          disableScroll: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
      
            double angle = 0;
            switch (index % 3) {
              case 0:
                angle = 0;
                break;
              case 1:
                angle = 0.2;
                break;
              case 2:
                angle = -0.2;
                break;
            }
      
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                onTap: () {
                  onTapItem(item);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.rotate(
                      angle: angle,
                      child: Container(
                        width: 125,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: BoxBorder.all(color: Color(0xFFF5F5F5)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: CachedNetworkImage(
                            imageUrl: item.book.thumbnailUrl,
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) {
                              return Container();
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  item.book.title,
                                  style:
                                      AppTexts.b7.copyWith(color: ColorName.w1),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: RadialGradient(
                                    colors: [
                                      ColorName.p1,
                                      ColorName.b1,
                                    ],
                                    stops: [0.2, 1.0], // 20%에서 보라 → 100%에서 검정
                                    center: Alignment.bottomCenter, // 중심 고정
                                    radius: 0.85, // 퍼지는 정도 (1.0이면 꽉 채움)
                                  ),
                                  color: ColorName.b1,
                                  border: Border.all(color: Color(0xFFA99AFF)),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Assets.icons.icReadingChallengeTimeRate
                                          .svg(),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "${item.progressPercent}%",
                                        style: AppTexts.b7
                                            .copyWith(color: ColorName.p2),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                "저자: ",
                                style:
                                    AppTexts.b10.copyWith(color: ColorName.g2),
                              ),
                              Expanded(
                                child: Text(
                                  item.book.author,
                                  style: AppTexts.b10
                                      .copyWith(color: ColorName.w1),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          // Row(
                          //   children: [
                          //     Text(
                          //       "출판사: ",
                          //       style:
                          //           AppTexts.b10.copyWith(color: ColorName.g2),
                          //     ),
                          //     Expanded(
                          //       child: Text(
                          //         item.book.publisher,
                          //         style: AppTexts.b10
                          //             .copyWith(color: ColorName.w1),
                          //         maxLines: 1,
                          //         overflow: TextOverflow.ellipsis,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => Container()),
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
