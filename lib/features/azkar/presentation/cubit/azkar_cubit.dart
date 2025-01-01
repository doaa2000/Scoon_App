import 'package:bloc/bloc.dart';
import 'package:quran_app/features/azkar/data/models/azkar_model/azkar_model.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo_impl.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit(this.azkarRepoImpl) : super(AzkarInitial());
  final AzkarRepoImpl azkarRepoImpl;

  Future<void> getAllAzkar() async {
    try {
      emit(GetAllAzkarLoadingState());
      final azkar = await azkarRepoImpl.getAllAzkar();
      emit(GetAllAzkarSuccessState(azkarList: azkar));
    } catch (error) {
      emit(GetAllAzkarErrorState(errorMessage: error.toString()));
    }
  }
}
