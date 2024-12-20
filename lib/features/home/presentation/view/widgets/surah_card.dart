import 'package:flutter/material.dart';
import 'package:quran_app/features/home/data/model/quran_model/quran_model.dart';

class SurahCard extends StatelessWidget {
  final QuranModel surahModel;
  final Function() onTap;

  const SurahCard({super.key, required this.surahModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            buildSurahNumber(context),
            //const SizedBox(width: kSizeXXL),
            // Expanded(child: buildSurahNames(context)),
            // const SizedBox(width: kSizeXXL),
            // buildVersesCount(context),
          ],
        ),
      ),
    );
  }

  Widget buildSurahNumber(BuildContext context) {
    return Text(
      surahModel.id.toString(),
    );
  }

  // Widget buildSurahNames(BuildContext context) {
  //   String localCountryCode =
  //       LocalDb.getLocale?.languageCode ?? Platform.localeName.split("_").first;
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         localCountryCode == "tr"
  //             ? surahModel.nameTurkish.toString()
  //             : surahModel.nameSimple.toString(),
  //         style: context.theme.textTheme.headlineSmall?.copyWith(
  //           letterSpacing: 0.04,
  //           color: AppColors.grey,
  //         ),
  //       ),
  //       const SizedBox(height: kSizeS),
  //       Text(
  //         localCountryCode == "tr"
  //             ? surahModel.nameTurkish.toString()
  //             : surahModel.nameTranslated.toString(),
  //         style: context.theme.textTheme.labelMedium?.copyWith(
  //           letterSpacing: 0.04,
  //           color: AppColors.grey,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
