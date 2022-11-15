import 'package:flutter/material.dart';
import '../../../common_widgets/policy_footer.dart';
import '../widgets/social_login.dart';

class SocialLoginScreen extends StatelessWidget {
  const SocialLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop()),
          title: const SizedBox(
            height: 20,
            child: Center(
                child: Image(
                    image: AssetImage('lib/assets/images/mercado_logo.png'))),
          ),
        ),
        body: const SocialLogin(),
        bottomNavigationBar: const PolicyFooter());
  }
}
