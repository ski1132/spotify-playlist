// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistUserModelImpl _$$PlaylistUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaylistUserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageUrlModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tracks:
          TrackPlaylistModel.fromJson(json['tracks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaylistUserModelImplToJson(
        _$PlaylistUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'images': instance.images,
      'tracks': instance.tracks,
    };
