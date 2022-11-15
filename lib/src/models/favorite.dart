import 'package:json_annotation/json_annotation.dart';

part 'favorite.g.dart';

@JsonSerializable()
class Favorite {
  const Favorite(this.created,
      {required this.id, required this.userId, required this.itemId});

  final int id;
  final int userId;
  final int itemId;
  final DateTime created;

  factory Favorite.fromJson(Map<String, dynamic> json) => _$FavoriteFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteToJson(this);
}
