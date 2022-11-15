// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      DateTime.parse(json['created'] as String),
      id: json['id'] as int,
      userId: json['userId'] as int,
      location: json['location'] as String,
      active: json['active'] as bool,
      alerts: json['alerts'] as bool,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'location': instance.location,
      'active': instance.active,
      'alerts': instance.alerts,
      'created': instance.created.toIso8601String(),
    };
