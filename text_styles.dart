import 'package:flutter/material.dart';
import 'app_colors.dart';

class TextStyles {
  static const TextStyle appBarTitle = TextStyle(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle filterTagSelected = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle filterTagUnselected = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle plantName = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle plantPrice = TextStyle(
    color: AppColors.primary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle plantRating = TextStyle(
    color: AppColors.grey,
    fontSize: 12,
  );
}