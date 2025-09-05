import 'package:flutter/material.dart';
import 'package:plant_shop_create_new_password/view/screen/create_password_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CreatePasswordScreen(),
    );
  }
}