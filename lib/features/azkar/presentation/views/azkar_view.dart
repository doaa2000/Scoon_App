import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/utils/colors.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo_impl.dart';
import 'package:quran_app/features/azkar/presentation/cubit/azkar_cubit.dart';
import 'package:quran_app/features/azkar/presentation/views/widgets/azkar_view_body.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});
  static const routeName = 'azkar';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarCubit(AzkarRepoImpl())..getAllAzkar(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
        ),
        backgroundColor: AppColors.white,
        body: const AzkarViewBody(),
      ),
    );
  }
}
