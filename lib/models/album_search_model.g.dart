// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumSearchModelImpl _$$AlbumSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AlbumSearchModelImpl(
      id: json['id'] as String,
      albumType: json['album_type'] as String,
      imagesList: (json['images'] as List<dynamic>)
          .map((e) => ImageUrlModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => ArtistSearchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tracks: json['tracks'] == null
          ? null
          : TrackAlbumModel.fromJson(json['tracks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AlbumSearchModelImplToJson(
        _$AlbumSearchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'album_type': instance.albumType,
      'images': instance.imagesList,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'artists': instance.artists,
      'tracks': instance.tracks,
    };
