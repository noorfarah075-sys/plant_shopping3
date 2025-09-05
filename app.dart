import 'package:flutter/material.dart';
import 'package:plant_shop_special_offers_page/core/constants/app_colors.dart';
import 'package:plant_shop_special_offers_page/view/screen/notification_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const NotificationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}