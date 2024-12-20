import 'verse.dart';

class QuranModel {
  int? id;
  String? revelationPlace;
  String? nameSimple;
  String? nameComplex;
  String? nameArabic;
  String? nameTranslated;
  String? nameTurkish;
  int? startPage;
  int? endPage;
  List<Verse>? verses;

  QuranModel({
    this.id,
    this.revelationPlace,
    this.nameSimple,
    this.nameComplex,
    this.nameArabic,
    this.nameTranslated,
    this.nameTurkish,
    this.startPage,
    this.endPage,
    this.verses,
  });

  factory QuranModel.fromJson(Map<String, dynamic> json) => QuranModel(
        id: json['id'] as int?,
        revelationPlace: json['revelation_place'] as String?,
        nameSimple: json['name_simple'] as String?,
        nameComplex: json['name_complex'] as String?,
        nameArabic: json['name_arabic'] as String?,
        nameTranslated: json['name_translated'] as String?,
        nameTurkish: json['name_turkish'] as String?,
        startPage: json['start_page'] as int?,
        endPage: json['end_page'] as int?,
        verses: (json['verses'] as List<dynamic>?)
            ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'revelation_place': revelationPlace,
        'name_simple': nameSimple,
        'name_complex': nameComplex,
        'name_arabic': nameArabic,
        'name_translated': nameTranslated,
        'name_turkish': nameTurkish,
        'start_page': startPage,
        'end_page': endPage,
        'verses': verses?.map((e) => e.toJson()).toList(),
      };
}
