import 'package:bariaco/src/features/item/screens/item.dart';
import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ItemScreen()),
          );
        },
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              image: DecorationImage(
                image: AssetImage('lib/assets/images/compressor.jpg'),
                fit: BoxFit.fitHeight,
              )),
        ));
  }
}
