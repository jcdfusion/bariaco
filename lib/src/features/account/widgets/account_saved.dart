import 'package:flutter/material.dart';

class AccountSaved extends StatelessWidget {
  const AccountSaved({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      width: MediaQuery.of(context).size.width - 28,
      margin: const EdgeInsets.all(10),
    ));
  }
}
