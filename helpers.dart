import 'package:flutter/material.dart';

class Helpers {
  static void showSnackBar(context, String message, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? const Color(0xFFE53E3E) : const Color(0xFF00C853),
      ),
    );
  }
}