import 'package:flutter/material.dart';
import 'package:plant_shop_special_offers_page/core/constants/app_colors.dart';
import 'package:plant_shop_special_offers_page/core/utils/text_styles.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(title, style: AppTextStyles.title),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: AppColors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}