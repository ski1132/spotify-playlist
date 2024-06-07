// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedPlaylistModelImpl _$$FeaturedPlaylistModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedPlaylistModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imagesList: (json['images'] as List<dynamic>)
          .map((e) => ImageUrlModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeaturedPlaylistModelImplToJson(
        _$FeaturedPlaylistModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'images': instance.imagesList,
    };
