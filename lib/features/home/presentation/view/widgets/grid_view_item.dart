import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/colors.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 110,
        height: 110,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.mosque,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(height: 5),
            Text(
              'الاذكار',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
