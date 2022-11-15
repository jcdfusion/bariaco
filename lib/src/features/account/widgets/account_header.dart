import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width - 28,
          height: 168,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'lib/assets/images/michaelscott.jpg'),
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.black54,
                  )
                ],
              ),
              const Divider(height: 20),
              const Text('Hello Michael!', style: TextStyle(fontWeight: FontWeight.bold)),
              const Text(''),
              const Text('Member since October 2022')
            ],
          )
    );
  }
}
