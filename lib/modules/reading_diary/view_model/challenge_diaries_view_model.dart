import 'dart:async';

import 'package:book/modules/reading_diary/model/challenge_diary_thumbnail_response.dart';
import 'package:book/modules/reading_diary/repository/reading_diary_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/models/dual_cursor_page_response.dart';
import '../model/related_diary_sort.dart';

part 'challenge_diaries_view_model.g.dart';

@riverpod
class ChallengeDiariesViewModel extends _$ChallengeDiariesViewModel {
  late final ReadingDiaryRepository _repository;

  @override
  FutureOr<DualCursorPageResponse<ChallengeDiaryThumbnailResponse>> build(
      {required int memberId, required int challengeId}) {
    _repository = ref.watch(readingDiaryRepositoryProvider);
    return _fetchDiaries(memberId: memberId, challengeId: challengeId);
  }

  Future<DualCursorPageResponse<ChallengeDiaryThumbnailResponse>> _fetchDiaries({
    required int memberId,
    required int challengeId,
    RelatedDiarySort? sort,
    int? cursorId,
    double? cursorScore,
  }) async {
    final response = await _repository.getDiariesByChallenge(
      memberId,
      challengeId,
      sort: sort,
      cursorId: cursorId,
      cursorScore: cursorScore,
    );
    return response.data;
  }
} 