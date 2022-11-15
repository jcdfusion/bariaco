import 'package:bariaco/src/features/account/screens/account.dart';
import 'package:bariaco/src/features/sell/screens/sell.dart';
import 'package:bariaco/src/features/session/screens/social_login_screen.dart';
import 'package:flutter/material.dart';

class HomeDrawerAccount extends StatelessWidget {
  const HomeDrawerAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      padding: const EdgeInsets.all(10),
      alignment: AlignmentDirectional.topStart,
      color: const Color.fromRGBO(143, 143, 239, 1),
      // padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(children: const [
              Text(
                'Welcome Michael!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('lib/assets/images/michaelscott.jpg'),
                ),
              ),
            ]),
          ),
          TextButton.icon(
            icon: const Icon(
              Icons.person,
              size: 18,
              color: Colors.white,
            ),
            label: const Text(
              'Account',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
          TextButton.icon(
            icon: const Icon(
              Icons.monetization_on_outlined,
              size: 18,
              color: Colors.white,
            ),
            label: const Text(
              'Sell Something',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SellScreen()),
              );
            },
          ),
          TextButton.icon(
            icon: const Icon(
              Icons.inbox,
              size: 18,
              color: Colors.white,
            ),
            label: const Text(
              'Inbox',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SocialLoginScreen()),
              );
            },
          ),
        ],
      ),
      // child: ListView(
      //   children: [
      //     ListTile(
      //       leading: const Icon(Icons.person),
      //       title: const Text('Account'),
      //       onTap: () {},
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.person),
      //       title: const Text('Account'),
      //       onTap: () {},
      //     ),
      //     ListTile(
      //       leading: const Icon(Icons.person),
      //       title: const Text('Account'),
      //       onTap: () {},
      //     ),
      //   ],
      // ),
    );
  }
}
