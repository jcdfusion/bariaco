import 'package:flutter/material.dart';

class AccountItemsSaved extends StatelessWidget {
  const AccountItemsSaved({super.key});

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
            'Nothing saved yet?',
            style: Theme.of(context).textTheme.headline2,
          ),
          const Image(image: AssetImage('lib/assets/images/saved_graph.png')),
          SizedBox(
            width: fillParentWidth,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.list),
              label: const Text(
                'Start Browsing',
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
