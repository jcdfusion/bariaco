import 'package:flutter/material.dart';

class ItemShare extends StatelessWidget {
  const ItemShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Chip(avatar: Icon(Icons.block, size: 15), label: Text('Report')),
          Chip(avatar: Icon(Icons.share, size: 15), label: Text('Share')),
          Chip(avatar: Icon(Icons.favorite_border, size: 15), label: Text('Save')),
        ],
      ),
    );
  }
}
