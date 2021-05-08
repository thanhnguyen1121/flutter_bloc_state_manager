// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListUserReponse _$ListUserReponseFromJson(Map<String, dynamic> json) {
  return ListUserReponse(
    json['page'] as int,
    json['per_page'] as int,
    json['total'] as int,
    json['total_pages'] as int,
    (json['data'] as List<dynamic>)
        .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ListUserReponseToJson(ListUserReponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPage,
      'data': instance.data,
    };
