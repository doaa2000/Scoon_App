import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/core/services/asset_quran_service.dart';
import 'package:quran_app/features/home/data/model/quran_model/quran_model.dart';
part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit() : super(QuranInitial());

  List<QuranModel> surahs = [];

  Future<void> getAllSurahs() async {
    surahs = await AssetQuranService.getAllOfSurahs();
    emit(GetAllSurahsSuccessfulState());
  }
}
