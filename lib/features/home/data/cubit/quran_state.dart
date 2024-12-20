part of 'quran_cubit.dart';

@immutable
sealed class QuranState {}

final class QuranInitial extends QuranState {}

final class GetAllSurahsLoadingState extends QuranState {}

final class GetAllSurahsSuccessfulState extends QuranState {}

final class GetAllSurahsFailuerState extends QuranState {}
