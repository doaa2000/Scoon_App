import 'package:flutter/material.dart';
import 'package:quran_app/features/azkar/presentation/views/azkar_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AzkarView.routeName:
      return MaterialPageRoute(builder: (context) => const AzkarView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
