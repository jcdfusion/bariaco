import 'package:flutter/material.dart';

class PolicyFooter extends StatelessWidget {
  const PolicyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          TextButton(onPressed: null,
              child: Text('Privacy Policy')
          ),
          TextButton(onPressed: null,
              child: Text('Terms of Use')
          ),
        ],
      ),
    );
  }
}
