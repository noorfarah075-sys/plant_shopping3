import 'package:flutter/material.dart';
import 'package:plant_shop_my_wishlist_page/view/screens/wishlist_screen.dart';
import '../core/app_colors.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Arial',
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: WishlistScreen(),
    );
  }
}
