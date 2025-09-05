import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class AppTextStyles {
  static final TextStyle title = TextStyle(
    fontSize:FontSize.f20,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    fontFamily: AppFonts.roboto,
  );

  static final TextStyle subtitle = TextStyle(
    fontSize:FontSize.f16,
    color: AppColors.grey,
    fontFamily: AppFonts.roboto,
  );

  static final TextStyle label = TextStyle(
    fontSize: FontSize.f16,
    color: AppColors.white,
    fontFamily: AppFonts.roboto,
  );

  static final TextStyle requirementValid = TextStyle(
    fontSize: FontSize.f12,
    color: AppColors.green,
    fontFamily: AppFonts.roboto,
  );

  static final TextStyle requirementInvalid = TextStyle(
      fontSize: FontSize.f12,
    color: AppColors.red,
    fontFamily: AppFonts.roboto,
  );

  static final TextStyle buttonText = TextStyle(
    fontSize: FontSize.f16,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.roboto,
  );
}