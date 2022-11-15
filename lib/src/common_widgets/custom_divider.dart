import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      padding: const EdgeInsets.all(10),
      color: const Color.fromRGBO(63, 191, 191, 1),
    );
  }
}