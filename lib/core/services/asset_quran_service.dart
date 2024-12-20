import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:quran_app/features/home/data/model/quran_model/quran_model.dart';

import '../utils/constants.dart';

class AssetQuranService {
  AssetQuranService._();

  /// Get all surahs and verses from assets
  static Future<List<QuranModel>> getAllOfSurahs() async {
    String data = await rootBundle.loadString(JsonPathConstants.quran);
    var result = json.decode(data) as List;
    return result
        .map((e) => QuranModel.fromJson(e))
        .toList()
        .cast<QuranModel>();
  }
}
