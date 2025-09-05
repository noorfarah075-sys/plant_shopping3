import 'package:flutter/material.dart';
import 'package:plant_shop_success_screen/view/screens/password_success_screen.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PasswordSuccessScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}