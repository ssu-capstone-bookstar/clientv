// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_comment_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _DiaryCommentRepository implements DiaryCommentRepository {
  _DiaryCommentRepository(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ResponseForm<CursorPageResponse<DiaryCommentResponse>>> findComments({
    required int diaryId,
    int? cursorId,
    int? size,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'cursorId': cursorId,
      r'size': size,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ResponseForm<CursorPageResponse<DiaryCommentResponse>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v2/reading-diaries/${diaryId}/comments',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ResponseForm<CursorPageResponse<DiaryCommentResponse>> _value;
    try {
      _value = ResponseForm<CursorPageResponse<DiaryCommentResponse>>.fromJson(
        _result.data!,
        (json) => CursorPageResponse<DiaryCommentResponse>.fromJson(
          json as Map<String, dynamic>,
          (json) => DiaryCommentResponse.fromJson(json as Map<String, dynamic>),
        ),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ResponseForm<DiaryCommentResponse>> createComment(
    int diaryId,
    CommentRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _options = _setStreamType<ResponseForm<DiaryCommentResponse>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v2/reading-diaries/${diaryId}/comments',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ResponseForm<DiaryCommentResponse> _value;
    try {
      _value = ResponseForm<DiaryCommentResponse>.fromJson(
        _result.data!,
        (json) => DiaryCommentResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ResponseForm<void>> deleteComment(int commentId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ResponseForm<void>>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v2/reading-diaries/comments/${commentId}',
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

String _$diaryCommentRepositoryHash() =>
    r'2662e6f0da4830b9c82cc62364fa09adb9dae309';

/// See also [diaryCommentRepository].
@ProviderFor(diaryCommentRepository)
final diaryCommentRepositoryProvider =
    Provider<DiaryCommentRepository>.internal(
  diaryCommentRepository,
  name: r'diaryCommentRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$diaryCommentRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DiaryCommentRepositoryRef = ProviderRef<DiaryCommentRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
