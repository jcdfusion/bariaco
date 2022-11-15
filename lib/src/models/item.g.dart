// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      DateTime.parse(json['created'] as String),
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      price: json['price'] as int,
      description: json['description'] as String,
      active: json['active'] as bool,
      bestOffer: json['bestOffer'] as bool,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'active': instance.active,
      'bestOffer': instance.bestOffer,
      'created': instance.created.toIso8601String(),
    };
