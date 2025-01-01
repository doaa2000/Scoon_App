class AzkarItem {
  int? id;
  String? text;
  int? count;

  AzkarItem({this.id, this.text, this.count});

  factory AzkarItem.fromJson(Map<String, dynamic> json) => AzkarItem(
        id: json['id'] as int?,
        text: json['text'] as String?,
        count: json['count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'count': count,
      };
}
