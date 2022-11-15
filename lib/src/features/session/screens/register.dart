import 'package:bariaco/src/features/session/widgets/registration_form.dart';
import 'package:flutter/material.dart';
import '../../../common_widgets/policy_footer.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
        body: const SingleChildScrollView(
          child: RegisterForm(),
        ),
        bottomNavigationBar: const PolicyFooter());
  }
}
