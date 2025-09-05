import 'package:flutter/material.dart';
import 'package:plant_shop_success_screen/core/constants/app_colors.dart';


class CheckCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: AppColors.green,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.check,
        color: AppColors.white,
        size: 60,
      ),
    );
  }
}