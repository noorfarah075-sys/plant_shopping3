import 'package:flutter/material.dart';
import 'package:plant_shop_create_new_password/core/constans/app_colors.dart';
import 'package:plant_shop_create_new_password/core/constans/app_heights.dart';
import 'package:plant_shop_create_new_password/core/constans/app_sizes.dart';
import 'package:plant_shop_create_new_password/core/constans/app_text_styles.dart';
import 'package:plant_shop_create_new_password/view/widget/simple_password_field.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _rememberMe = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.s24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppHeights.h16),

              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.white,
                      size: AppSizes.iconMedium,
                    ),
                  ),
                  const SizedBox(width: AppSizes.s8),
                  Text("Create New Password", style: AppTextStyles.title),
                ],
              ),

              const SizedBox(height: AppHeights.h40),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/6195/6195699.png',
                    width: 220,
                    height: 220,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          color: AppColors.cardColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.security,
                          size: 80,
                          color: AppColors.green,
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: AppHeights.h40),

              Text(
                "Create Your New Password",
                style: AppTextStyles.subtitle,
              ),

              const SizedBox(height: AppHeights.h24),

              SimplePasswordField(
                hint: "••••••••",
                controller: _passwordController,
                obscureText: _obscurePassword,
                toggleVisibility: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),

              const SizedBox(height: AppHeights.h16),

              SimplePasswordField(
                hint: "••••••••",
                controller: _confirmPasswordController,
                obscureText: _obscureConfirmPassword,
                toggleVisibility: () {
                  setState(() {
                    _obscureConfirmPassword = !_obscureConfirmPassword;
                  });
                },
              ),

              const SizedBox(height: AppHeights.h16),

              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    },
                    activeColor: AppColors.green,
                  ),
                  const Text(
                    "Remember me",
                    style: TextStyle(color: AppColors.white),
                  ),
                ],
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: AppSizes.s56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.s12),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Handle Continue button press
                  },
                  child: Text(
                    "Continue",
                    style: AppTextStyles.buttonText,
                  ),
                ),
              ),

              const SizedBox(height: AppHeights.h24),
            ],
          ),
        ),
      ),
    );
  }
}