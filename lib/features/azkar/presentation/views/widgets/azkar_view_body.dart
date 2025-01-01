import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/azkar/presentation/cubit/azkar_cubit.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AzkarCubit, AzkarState>(
      listener: (context, state) {
        if (state is GetAllAzkarSuccessState) {
          log("azkar ${state.azkarList[3].category} ");
        }
        if (state is GetAllAzkarErrorState) {
          log("azkar ${state.errorMessage} ");
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Container(
              child: const Text("اذكار الصباح "),
            )
          ],
        );
      },
    );
  }
}
