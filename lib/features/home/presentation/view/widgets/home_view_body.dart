import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widgets/grid_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 200),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(children: [
              SizedBox(height: 5),
              GridViewItem(),
            ]),
          ),
        ));
  }
}
