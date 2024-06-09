// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackSearchModelImpl _$$TrackSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackSearchModelImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      album: AlbumSearchModel.fromJson(json['album'] as Map<String, dynamic>),
      name: json['name'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => ArtistSearchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      durationMs: (json['duration_ms'] as num).toInt(),
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$TrackSearchModelImplToJson(
        _$TrackSearchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'album': instance.album,
      'name': instance.name,
      'artists': instance.artists,
      'duration_ms': instance.durationMs,
      'uri': instance.uri,
    };
