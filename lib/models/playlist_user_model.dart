// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist/models/image_url_model.dart';
import 'package:spotify_playlist/models/track_playlist_model.dart';
// required: associates our `main.dart` with the code generated by Freezed
part 'playlist_user_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'playlist_user_model.g.dart';

@freezed
class PlaylistUserModel with _$PlaylistUserModel {
  const factory PlaylistUserModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'images') required List<ImageUrlModel> images,
    @JsonKey(name: 'tracks') required TrackPlaylistModel tracks,
  }) = _PlaylistUserModel;

  factory PlaylistUserModel.fromJson(Map<String, Object?> json) =>
      _$PlaylistUserModelFromJson(json);
}
