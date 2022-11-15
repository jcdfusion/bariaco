import 'package:flutter/material.dart';

import '../../item/screens/item.dart';

class Test3 extends StatelessWidget {
  const Test3({super.key});

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
                image: AssetImage('lib/assets/images/Dunder-Mifflin.jpg'),
                fit: BoxFit.fitHeight,
              )),
        ));
  }
}
