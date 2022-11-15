import 'package:flutter/material.dart';

import '../screens/sell.dart';

class StartSellingBox extends StatelessWidget {
  const StartSellingBox({super.key});

  @override
  Widget build(BuildContext context) {
    var fillParentWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Not selling yet?',
            style: Theme.of(context).textTheme.headline2,
          ),
          const Image(image: AssetImage('lib/assets/images/sell_graph.png')),
          SizedBox(
            width: fillParentWidth,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SellScreen()),
                );
              },
              icon: const Icon(Icons.monetization_on_outlined),
              label: const Text(
                'Start Selling',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
