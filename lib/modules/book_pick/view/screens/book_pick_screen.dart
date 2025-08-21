import 'package:book/common/components/text_field/search_text_field.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/modules/book_pick/model/like_book_response.dart';
import 'package:book/modules/book_pick/model/youtube_recommend_response.dart';
import 'package:book/modules/book_pick/view/widgets/book_pick_item.dart';
import 'package:book/modules/book_pick/view/widgets/youtube_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../gen/colors.gen.dart';
import '../../view_model/book_pick_view_model.dart';

class BookPickScreen extends ConsumerStatefulWidget {
  const BookPickScreen({super.key});

  @override
  ConsumerState<BookPickScreen> createState() => _BookPickScreenState();
}

class _BookPickScreenState extends ConsumerState<BookPickScreen> {
  int _currentIndex = 0;

  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  DateTime? _lastRightReachedTime;

  @override
  void initState() {
    super.initState();
    _setupScrollListener();
  }

  void _setupScrollListener() {
    _scrollController.addListener(() {
      if (_scrollController.position.axis == Axis.horizontal &&
          _scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent * 0.8 &&
          !_isLoadingMore) {
        _onRightReached();
      }
    });
  }

  void _onRightReached() {
    final now = DateTime.now();
    // 디바운싱: 마지막 호출로부터 2초가 지나지 않았으면 무시
    if (_lastRightReachedTime != null &&
        now.difference(_lastRightReachedTime!).inSeconds < 2) {
      return;
    }
    // 이미 로딩 중이면 무시
    if (_isLoadingMore) {
      return;
    }
    _lastRightReachedTime = now;
    _isLoadingMore = true;
    // 실제 로딩 로직 실행
    _loadMoreLikeBooks();
  }

  void _loadMoreLikeBooks() async {
    await ref.read(bookPickViewModelProvider.notifier).refreshLikeBooks();

    _isLoadingMore = false;
  }

  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Future<void> _onRefresh() async {
    await ref.read(bookPickViewModelProvider.notifier).initState();
  }

  Future<void> _otherRecommend() async {
    await ref.read(bookPickViewModelProvider.notifier).getOtherRecommend();
  }

  void _launchYouTube(String videoId) async {
    final url = 'https://www.youtube.com/watch?v=$videoId';

    if (await canLaunchUrl(Uri.parse(url))) {
      await ref.read(bookPickViewModelProvider.notifier).watchYoutubeVideo(videoId);
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookPickStateAsync = ref.watch(bookPickViewModelProvider);

    return bookPickStateAsync.when(
      data: (bookPickState) => RefreshIndicator(
        onRefresh: _onRefresh,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchBook(
                    onTap: () => context.push('/book-pick/search'),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  _buildYoutubeBook(
                    ctx: context,
                    list: bookPickState.youtubeRecommends,
                    currentIndex: _currentIndex,
                    updateIndex: _updateIndex,
                    onItemTap: (index) {
                      final videoId =
                          bookPickState.youtubeRecommends[index].videoId;
                      _launchYouTube(videoId);
                    },
                    onDirectShow: () {
                      final videoId = bookPickState
                          .youtubeRecommends[_currentIndex].videoId;
                      _launchYouTube(videoId);
                    },
                    onOtherRecommend: _otherRecommend,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  _buildBookPick(
                    controller: _scrollController,
                    list: bookPickState.likeBook.likeBooks,
                    onAllView: () {
                      context.push('/book-pick/my-likes');
                    },
                    onItemTap: (index) {
                      final item = bookPickState.likeBook.likeBooks[index];
                      context.push('/book-pick/overview/${item.bookId}');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      error: _error("책픽 정보를 불러올 수 없습니다."),
      loading: _loading,
    );
  }

  Widget _buildSearchBook({required VoidCallback onTap}) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('책 찾기', style: AppTexts.h4.copyWith(color: ColorName.w1)),
          SizedBox(
            height: 16,
          ),
          SearchTextField(
            hintText: '읽고 싶은 책을 검색해 보세요',
            hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
            suffixIcon: Assets.images.icSearchUncolored3x.image(scale: 3),
            onTap: onTap,
            readOnly: true,
          ),
        ],
      );

  Widget _buildYoutubeBook(
          {required BuildContext ctx,
          required List<YoutubeRecommendResponse> list,
          required int currentIndex,
          required Function(int) updateIndex,
          required Function(int) onItemTap,
          required Function() onDirectShow,
          required Function() onOtherRecommend}) =>
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              list.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: currentIndex == index ? 20 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currentIndex == index
                      ? ColorName.p1 // 활성화된 인디케이터 색상
                      : ColorName.g7, // 비활성화된 인디케이터 색상
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CarouselSlider.builder(
              itemCount: list.length,
              options: CarouselOptions(
                height: 240,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  updateIndex(index);
                },
              ),
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) {
                final item = list[index];
                return YoutubeItem(
                    item: item, onItemTap: () => onItemTap(index));
              }),
          SizedBox(
            height: 45,
          ),
          _buildActionButton(
            ctx,
            '바로 보기',
            ColorName.p1,
            AppTexts.b7.copyWith(color: ColorName.w1),
            onDirectShow,
          ),
          SizedBox(
            height: 8,
          ),
          _buildActionButton(
            ctx,
            '다른 추천 받기',
            ColorName.g7,
            AppTexts.b7.copyWith(color: ColorName.w1),
            onOtherRecommend,
          ),
        ],
      );

  Widget _buildBookPick(
          {required ScrollController controller,
          required List<LikeBookResponse> list,
          required Function() onAllView,
          required Function(int) onItemTap}) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('책 PICK', style: AppTexts.h4.copyWith(color: ColorName.w1)),
          SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('내가 픽한 책을 확인하고 빠르게 읽어보세요!',
                  style: AppTexts.b10.copyWith(color: ColorName.g2)),
              if (list.isNotEmpty)
                InkWell(
                  onTap: onAllView,
                  child: Row(
                    children: [
                      Text(
                        "전체 보기",
                        style: AppTexts.b10.copyWith(color: ColorName.g3),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 20,
                        color: ColorName.g3,
                      )
                    ],
                  ),
                )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 135,
            child: list.isNotEmpty ? ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 12),
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = list[index];
                  return BookPickItem(
                      item: item, onItemTap: () => onItemTap(index));
                }) : Center(
              child: Text(
                '내가 픽한 책이 없습니다.',
                style: AppTexts.b8.copyWith(color: ColorName.g3),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          )
        ],
      );

  Widget _buildActionButton(
    BuildContext context,
    String text,
    Color backgroundColor,
    TextStyle textStyle,
    VoidCallback onPressed,
  ) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ));
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
