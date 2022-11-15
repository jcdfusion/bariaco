import 'package:flutter/material.dart';

import '../screens/login.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    var fillParentWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Connect to MercadoPR',
            style: Theme.of(context).textTheme.headline2,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child:
                Image(image: AssetImage('lib/assets/images/login_graph.png')),
          ),
          SizedBox(
            width: fillParentWidth,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(66, 103, 178, 1)),
                // padding: MaterialStateProperty.all(const EdgeInsets.all(18))
              ),
              icon: const Icon(Icons.facebook),
              label: const Text(
                'Connect with Facebook',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: fillParentWidth,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(222, 82, 70, 1)),
                //padding: MaterialStateProperty.all(const EdgeInsets.all(22))
              ),
              icon: const Icon(Icons.android),
              label: const Text(
                'Connect with Google',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          const Text('or continue using email'),
          SizedBox(
            width: fillParentWidth,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              icon: const Icon(Icons.email),
              label: const Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
