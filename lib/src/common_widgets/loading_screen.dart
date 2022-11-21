import 'package:flutter/material.dart';
import 'package:bariaco/utils/mercado_colors.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              margin: const EdgeInsets.all(20),
              child: const Image(
                  image: AssetImage('lib/assets/images/mercado_logo.png')),
            ),
            const CircularProgressIndicator(
              color: mercadoSecondary,
            )
          ],
        ),
      ),
    );
  }
}
/*

 */
