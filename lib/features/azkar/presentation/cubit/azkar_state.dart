part of 'azkar_cubit.dart';

abstract class AzkarState {}

class AzkarInitial extends AzkarState {}

class GetAllAzkarLoadingState extends AzkarState {}

class GetAllAzkarSuccessState extends AzkarState {
  final List<AzkarModel> azkarList;
  GetAllAzkarSuccessState({required this.azkarList});
}

class GetAllAzkarErrorState extends AzkarState {
  final String errorMessage;
  GetAllAzkarErrorState({required this.errorMessage});
}
