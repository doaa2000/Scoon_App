import 'package:quran_app/features/azkar/data/models/azkar_model/azkar_model.dart';

abstract class AzkarRepo {
  Future<List<AzkarModel>> getAllAzkar();
}
