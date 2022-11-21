import 'package:bariaco/src/features/account/screens/account.dart';
import 'package:bariaco/src/features/item/screens/item.dart';
import 'package:bariaco/src/features/session/cubits/authentication_cubit.dart';
import 'package:bariaco/src/features/session/screens/social_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_drawer_account.dart';
import 'home_drawer_login.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const HomeDrawerAccount(),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child:
              Text('Categories', style: Theme.of(context).textTheme.headline2),
        )),
        ListTile(
          title: const Text('Art and Collectibles'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Beauty'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Clothing and Accessories'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Electronics'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('General'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Health'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Home and Garden'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Pets'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Shoes'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Sports and Outdoors'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Toys and Hobbies'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Vehicules'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Video Games'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemScreen()),
            );
          },
        ),
      ],
    ));
  }
}
