// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackPlaylistModelImpl _$$TrackPlaylistModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackPlaylistModelImpl(
      href: json['href'] as String,
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$TrackPlaylistModelImplToJson(
        _$TrackPlaylistModelImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };
