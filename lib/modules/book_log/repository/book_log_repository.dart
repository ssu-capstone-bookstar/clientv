import 'package:flutter_riverpod/flutter_riverpod.dart';

/// TODO: 책로그 관련 데이터 저장소 인터페이스 (향후 API 연동용)
abstract class BookLogRepository {
  // 예시: Future<List<BookLog>> fetchBookLogs(int memberId);
}

final bookLogRepositoryProvider = Provider<BookLogRepository>((ref) {
  // 실제 구현체로 교체 필요
  throw UnimplementedError();
});
