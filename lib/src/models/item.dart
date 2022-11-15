import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  final int id;
  final int userId;
  final String title;
  final int price;
  final String description;
  final bool active;
  final bool bestOffer;
  final DateTime created;

  const Item(this.created,
      {required this.id,
      required this.userId,
      required this.title,
      required this.price,
      required this.description,
      required this.active,
      required this.bestOffer});

  factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
