// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumSearchModelImpl _$$AlbumSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AlbumSearchModelImpl(
      albumType: json['album_type'] as String,
      imagesList: (json['images'] as List<dynamic>)
          .map((e) => ImageUrlModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => ArtistSearchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumSearchModelImplToJson(
        _$AlbumSearchModelImpl instance) =>
    <String, dynamic>{
      'album_type': instance.albumType,
      'images': instance.imagesList,
      'name': instance.name,
      'artists': instance.artists,
    };
