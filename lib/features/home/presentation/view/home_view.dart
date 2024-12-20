import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/colors.dart';
import 'package:quran_app/features/home/presentation/view/widgets/home_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor, body: HomeViewBody());
  }
}
