import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: const Icon(Icons.arrow_back),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
      title: const SizedBox(
        height: 20,
        child: Center(child: Image(image: AssetImage('lib/assets/mercado_logo.png'))),
      ),
      actions: const [CircleAvatar()],
    );
    // return Container(
    //   color: Colors.white,
    //   padding: const EdgeInsets.all(10),
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Icon(Icons.menu),
    //           Spacer(),
    //           SizedBox(
    //             height: 20,
    //             child: Image(image: AssetImage('lib/assets/mercado_logo.png')),
    //           ),
    //           Spacer(),
    //           CircleAvatar()
    //         ],
    //       ),
    //       Row(
    //         children: [
    //           Text('Searchbar'),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
