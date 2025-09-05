import 'package:flutter/material.dart';
import 'package:plant_shop_my_wishlist_page/core/app_colors.dart';
import 'package:plant_shop_my_wishlist_page/core/app_heights.dart';
import 'package:plant_shop_my_wishlist_page/core/app_sizes.dart';
import 'package:plant_shop_my_wishlist_page/core/text_styles.dart';
import '../widgets/filter_tag_widget.dart';
import '../widgets/plant_card_widget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('My Wishlist', style: TextStyles.appBarTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Filter Tags
          Container(
            height: AppHeights.h50,
            margin: const EdgeInsets.symmetric(vertical: AppSizes.largeSpacing),
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.xlPadding),
              children: const [
                FilterTagWidget(text: 'Houseware', isSelected: true),
                FilterTagWidget(text: 'Light', isSelected: false),
                FilterTagWidget(text: 'Garden', isSelected: false),
                FilterTagWidget(text: 'Kitchen', isSelected: false),
              ],
            ),
          ),

          // Plants Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(AppSizes.xlPadding),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: AppSizes.gridCrossAxisCount,
                crossAxisSpacing: AppSizes.mediumSpacing,
                mainAxisSpacing: AppSizes.mediumSpacing,
                childAspectRatio: AppSizes.gridAspectRatio,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return PlantCardWidget(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}