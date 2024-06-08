// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_album_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackAlbumModelImpl _$$TrackAlbumModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackAlbumModelImpl(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => AlbumDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrackAlbumModelImplToJson(
        _$TrackAlbumModelImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
      'items': instance.items,
    };
