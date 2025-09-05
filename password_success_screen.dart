import 'package:flutter/material.dart';
import 'package:plant_shop_success_screen/core/constants/app_colors.dart';
import 'package:plant_shop_success_screen/core/constants/app_fonts.dart';
import 'package:plant_shop_success_screen/core/constants/app_heights.dart';
import 'package:plant_shop_success_screen/core/constants/app_sizes.dart';
import 'package:plant_shop_success_screen/core/constants/app_text_styles.dart';
import 'package:plant_shop_success_screen/view/widgets/animated_check_circle.dart';

class PasswordSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios, color: AppColors.white),
        title: Text(
          'Create New Password',
         style: TextStyle(color: AppColors.white),
      ),
     ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Center(
                      child: CheckCircle(),
                    ),
                  ),


                  Text(
                    'Congratulations!',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: FontSizeApp.f24,
                    ),
                  ),

                  Text(
                    'Your account is ready to use. You will\nbe redirected to the Home page in a\nfew seconds.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: FontSizeApp.f16,
                    ),
                  ),


                  CircularProgressIndicator(
                    color: AppColors.green,
                    strokeWidth: 3,
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: AppHeights.h52,
            margin: EdgeInsets.all(AppSizes.s24),
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(AppSizes.s28),
            ),
            child: Center(
              child: Text(
                'Continue',
                style: AppTextStyles.button,
              ),
            ),
          ),
        ],
      ),
    );
  }
}