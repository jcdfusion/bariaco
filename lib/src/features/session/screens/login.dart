import 'package:bariaco/src/features/session/cubits/authentication_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common_widgets/policy_footer.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          child: LoginForm(),
        ),
        bottomNavigationBar: const PolicyFooter());
  }
}
