import 'package:bariaco/src/common_widgets/custom_divider.dart';
import 'package:bariaco/src/features/account/screens/profile_name_change.dart';
import 'package:flutter/material.dart';

import '../screens/profile_email_change.dart';
import '../screens/profile_location_change.dart';
import '../screens/profile_password_change.dart';
import '../screens/profile_phone_change.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 28,
        margin: const EdgeInsets.all(10),
        child: Wrap(
          children: [
            Row(
              children: [
                const Text('Michael J. Scott'),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ProfileNameChangeScreen()),
                      );
                    },
                    child: const Text('Edit'))
              ],
            ),
            const CustomDivider(),
            //const Divider(height: 10),
            Row(
              children: [
                const Text('michael.scott@gmail.com'),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ProfileEmailChangeScreen()),
                      );
                    },
                    child: const Text('Edit'))
              ],
            ),
            const CustomDivider(),
            //const Divider(height: 10),
            Row(
              children: [
                const Text('787-509-6006'),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ProfilePhoneChangeScreen()),
                      );
                    },
                    child: const Text('Edit'))
              ],
            ),
            const CustomDivider(),
            //const Divider(height: 10),
            Row(
              children: [
                const Text('Scranton, PA'),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ProfileLocationChangeScreen()),
                      );
                    },
                    child: const Text('Edit'))
              ],
            ),
            const CustomDivider(),
            //const Divider(height: 10),
            Row(
              children: [
                const Text('Password'),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ProfilePasswordChangeScreen()),
                      );
                    },
                    child: const Text('Edit'))
              ],
            ),
          ],
        ));
  }
}
