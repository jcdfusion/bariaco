import 'package:flutter/material.dart';

import '../../session/screens/social_login_screen.dart';

class HomeDrawerAccountLogin extends StatelessWidget {
  const HomeDrawerAccountLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        alignment: AlignmentDirectional.topStart,
        color: const Color.fromRGBO(143, 143, 239, 1),
        child: Center(
          child: TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SocialLoginScreen()));
              },
              icon: const Icon(Icons.person_add, color: Colors.white),
              label:
                  const Text('Login/Register', style: TextStyle(color: Colors.white))),
        ));
  }
}
