import 'package:flutter/material.dart';
import 'package:bariaco/utils/mercado_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      padding: const EdgeInsets.all(10),
      color: mercadoPrimary,
    );
  }
}