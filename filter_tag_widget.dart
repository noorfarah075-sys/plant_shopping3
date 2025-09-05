import 'package:flutter/material.dart';
import 'package:plant_shop_my_wishlist_page/core/app_colors.dart';
import 'package:plant_shop_my_wishlist_page/core/app_sizes.dart';
import 'package:plant_shop_my_wishlist_page/core/text_styles.dart';

class FilterTagWidget extends StatelessWidget {
  final String text;
  final bool isSelected;

  const FilterTagWidget({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: AppSizes.mediumSpacing),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.xxlPadding,
        vertical: AppSizes.largePadding,
      ),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.largeRadius),
        border: Border.all(
          color: isSelected ? AppColors.primary : AppColors.grey,
        ),
      ),
      child: Text(
        text,
        style: isSelected
            ? TextStyles.filterTagSelected
            : TextStyles.filterTagUnselected,
      ),
    );
  }
}