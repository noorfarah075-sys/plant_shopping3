import 'package:flutter/material.dart';
import 'package:plant_shop_success_screen/core/constants/app_colors.dart';

class FloatingDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: [
          // Top
          Positioned(top: 10, left: 95, child: _buildDot()),
          // Top Right
          Positioned(top: 35, right: 35, child: _buildDot()),
          // Right
          Positioned(top: 95, right: 10, child: _buildDot()),
          // Bottom Right
          Positioned(bottom: 35, right: 35, child: _buildDot()),
          // Bottom
          Positioned(bottom: 10, left: 95, child: _buildDot()),
          // Bottom Left
          Positioned(bottom: 35, left: 35, child: _buildDot()),
          // Left
          Positioned(top: 95, left: 10, child: _buildDot()),
          // Top Left
          Positioned(top: 35, left: 35, child: _buildDot()),
        ],
      ),
    );
  }

  Widget _buildDot() {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: AppColors.green,
        shape: BoxShape.circle,
      ),
    );
  }
}