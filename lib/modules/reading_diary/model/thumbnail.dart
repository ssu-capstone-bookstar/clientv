import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbnail.freezed.dart';
part 'thumbnail.g.dart';

@freezed
abstract class Thumbnail with _$Thumbnail {
  const factory Thumbnail({
    required String imageUrl,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => _$ThumbnailFromJson(json);
}
