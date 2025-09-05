import 'package:flutter/material.dart';
import 'package:plant_shop_my_wishlist_page/core/app_colors.dart';
import 'package:plant_shop_my_wishlist_page/core/app_sizes.dart';
import 'package:plant_shop_my_wishlist_page/core/text_styles.dart';
import 'package:plant_shop_my_wishlist_page/core/utils/image_urls.dart';
import 'package:plant_shop_my_wishlist_page/core/utils/plant_data.dart';


class PlantCardWidget extends StatelessWidget {
  final int index;

  const PlantCardWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final plant = PlantData.getPlant(index);

    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(AppSizes.mediumRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Plant Image
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.imageBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.mediumRadius),
                  topRight: Radius.circular(AppSizes.mediumRadius),
                ),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.mediumRadius),
                      topRight: Radius.circular(AppSizes.mediumRadius),
                    ),
                    child: Image.network(
                      ImageUrls.getPlantImage(index),
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Center(
                          child: Icon(
                            Icons.local_florist,
                            size: AppSizes.largeIcon,
                            color: Colors.green.shade300,
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: AppSizes.mediumPadding,
                    right: AppSizes.mediumPadding,
                    child: Container(
                      padding: const EdgeInsets.all(AppSizes.smallPadding),
                      decoration: BoxDecoration(
                        color: AppColors.black26,
                        borderRadius: BorderRadius.circular(AppSizes.smallRadius),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        size: AppSizes.mediumIcon,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Plant Details
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.largePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    plant['name']!,
                    style: TextStyles.plantName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        plant['price']!,
                        style: TextStyles.plantPrice,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: AppSizes.smallIcon,
                            color: AppColors.orange,
                          ),
                          const SizedBox(width: AppSizes.smallSpacing),
                          Text(
                            plant['rating']!,
                            style: TextStyles.plantRating,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}