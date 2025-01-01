import 'azkar_item.dart';

class AzkarModel {
  int? id;
  String? category;
  List<AzkarItem>? array;

  AzkarModel({this.id, this.category, this.array});

  factory AzkarModel.fromJson(Map<String, dynamic> json) => AzkarModel(
        id: json['id'] as int?,
        category: json['category'] as String?,
        array: (json['array'] as List<dynamic>?)
            ?.map((e) => AzkarItem.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'category': category,
        'array': array?.map((e) => e.toJson()).toList(),
      };
}
