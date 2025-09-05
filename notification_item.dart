import 'package:flutter/material.dart';
import 'package:plant_shop_special_offers_page/core/constants/app_colors.dart';
import 'package:plant_shop_special_offers_page/core/utils/app_sizes.dart';
import 'package:plant_shop_special_offers_page/core/utils/text_styles.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final IconData icon;
  final bool isNew;

  const NotificationItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.icon,
    this.isNew = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.smallPadding),
      padding: const EdgeInsets.all(AppSizes.mediumPadding),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(AppSizes.cardRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildIcon(),
          const SizedBox(width: AppSizes.mediumPadding),
          Expanded(child: _buildContent()),
          if (isNew) _buildNewIndicator(),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(AppSizes.iconRadius),
      ),
      child: Icon(
        icon,
        color: AppColors.white,
        size: 20,
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.notificationTitle),
        const SizedBox(height: 6),
        Text(
          subtitle,
          style: AppTextStyles.notificationSubtitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Text(time, style: AppTextStyles.notificationTime),
      ],
    );
  }

  Widget _buildNewIndicator() {
    return Container(
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
    );
  }
}
