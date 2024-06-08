// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumDetailModelImpl _$$AlbumDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AlbumDetailModelImpl(
      artists: (json['artists'] as List<dynamic>)
          .map((e) => ArtistSearchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      durationMs: (json['duration_ms'] as num).toInt(),
      id: json['id'] as String,
      name: json['name'] as String,
      previewUrl: json['preview_url'] as String,
    );

Map<String, dynamic> _$$AlbumDetailModelImplToJson(
        _$AlbumDetailModelImpl instance) =>
    <String, dynamic>{
      'artists': instance.artists,
      'duration_ms': instance.durationMs,
      'id': instance.id,
      'name': instance.name,
      'preview_url': instance.previewUrl,
    };
