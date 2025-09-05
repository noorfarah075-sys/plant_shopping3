import 'package:flutter/material.dart';
import 'package:plant_shop_create_new_password/core/constans/app_colors.dart';
import 'package:plant_shop_create_new_password/core/constans/app_sizes.dart';


class SimplePasswordField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool obscureText;
  final VoidCallback toggleVisibility;

  const SimplePasswordField({
    super.key,
    required this.hint,
    required this.controller,
    required this.obscureText,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.textFieldHeight,
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(AppSizes.textFieldRadius),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: AppColors.grey.withOpacity(0.6)),
          prefixIcon: const Icon(Icons.lock, color: AppColors.white),
          suffixIcon: IconButton(
            onPressed: toggleVisibility,
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              color: AppColors.white,
            ),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.s16,
            vertical: AppSizes.s16,
          ),
        ),
      ),
    );
  }
}