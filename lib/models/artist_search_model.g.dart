// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistSearchModelImpl _$$ArtistSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistSearchModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$ArtistSearchModelImplToJson(
        _$ArtistSearchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };
