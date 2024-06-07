// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
// required: associates our `main.dart` with the code generated by Freezed
part 'artist_search_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'artist_search_model.g.dart';

@freezed
class ArtistSearchModel with _$ArtistSearchModel {
  const factory ArtistSearchModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'uri') required String uri,
  }) = _ArtistSearchModel;

  factory ArtistSearchModel.fromJson(Map<String, Object?> json) =>
      _$ArtistSearchModelFromJson(json);
}
