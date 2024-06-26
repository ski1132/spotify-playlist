// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist/models/album_detail_model.dart';
// required: associates our `main.dart` with the code generated by Freezed
part 'track_album_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'track_album_model.g.dart';

@freezed
class TrackAlbumModel with _$TrackAlbumModel {
  const factory TrackAlbumModel({
    @JsonKey(name: 'limit') required int limit,
    @JsonKey(name: 'offset') required int offset,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'items') required List<AlbumDetailModel> items,
  }) = _TrackAlbumModel;

  factory TrackAlbumModel.fromJson(Map<String, Object?> json) =>
      _$TrackAlbumModelFromJson(json);
}
