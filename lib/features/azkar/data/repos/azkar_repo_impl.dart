import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:quran_app/features/azkar/data/models/azkar_model/azkar_model.dart';
import 'package:quran_app/features/azkar/domain/repos/azkar_repo.dart';

class AzkarRepoImpl implements AzkarRepo {
  final String jsonFilePath = 'assets/json/azkar.json';
  @override
  Future<List<AzkarModel>> getAllAzkar() async {
    final jsonString = await rootBundle.loadString(jsonFilePath);
    final List<dynamic> jsonResponse = jsonDecode(jsonString);
    return jsonResponse.map((json) => AzkarModel.fromJson(json)).toList();
  }
}
