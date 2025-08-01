// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrapped_diary_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _ScrappedDiaryRepository implements ScrappedDiaryRepository {
  _ScrappedDiaryRepository(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= '/api/v2';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ResponseForm<CursorPageResponse<ScrappedDiaryThumbnailResponse>>>
      getScrappedDiaryThumbnails({int? cursorId, int? size}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'cursorId': cursorId,
      r'size': size,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<
        ResponseForm<CursorPageResponse<ScrappedDiaryThumbnailResponse>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/scraps/reading-diaries/thumbnail',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ResponseForm<CursorPageResponse<ScrappedDiaryThumbnailResponse>>
        _value;
    try {
      _value = ResponseForm<
          CursorPageResponse<ScrappedDiaryThumbnailResponse>>.fromJson(
        _result.data!,
        (json) => CursorPageResponse<ScrappedDiaryThumbnailResponse>.fromJson(
          json as Map<String, dynamic>,
          (json) => ScrappedDiaryThumbnailResponse.fromJson(
            json as Map<String, dynamic>,
          ),
        ),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ResponseForm<CursorPageResponse<ScrappedDiaryFeed>>>
      getScrappedDiaryFeeds({int? cursorId, int? size}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'cursorId': cursorId,
      r'size': size,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ResponseForm<CursorPageResponse<ScrappedDiaryFeed>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/scraps/reading-diaries/feed',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ResponseForm<CursorPageResponse<ScrappedDiaryFeed>> _value;
    try {
      _value = ResponseForm<CursorPageResponse<ScrappedDiaryFeed>>.fromJson(
        _result.data!,
        (json) => CursorPageResponse<ScrappedDiaryFeed>.fromJson(
          json as Map<String, dynamic>,
          (json) => ScrappedDiaryFeed.fromJson(json as Map<String, dynamic>),
        ),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ResponseForm<void>> deleteScrappedDiary(int diaryId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ResponseForm<void>>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/scraps/reading-diaries/${diaryId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ResponseForm<void> _value;
    try {
      _value = ResponseForm<void>.fromJson(_result.data!, (json) => () {}());
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scrappedDiaryRepositoryHash() =>
    r'3d25037ea3fbfa1003825526b536b7d35eaec564';

/// See also [scrappedDiaryRepository].
@ProviderFor(scrappedDiaryRepository)
final scrappedDiaryRepositoryProvider =
    Provider<ScrappedDiaryRepository>.internal(
  scrappedDiaryRepository,
  name: r'scrappedDiaryRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$scrappedDiaryRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ScrappedDiaryRepositoryRef = ProviderRef<ScrappedDiaryRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
