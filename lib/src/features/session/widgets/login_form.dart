import 'package:bariaco/src/features/authentication/cubit/authentication_cubit.dart';
import 'package:bariaco/src/features/session/screens/register.dart';
import 'package:bariaco/utils/mercado_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common_widgets/loading_screen.dart';
import '../cubits/login_cubit.dart';

// Create a Form widget.
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var fillParentWidth = MediaQuery.of(context).size.width;
    double bottomPadding = 15;
    return BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
      if (state.status == LoginStatus.failure) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('OOPS!!'),
                content: Text(state.error.toString()),
              );
            });
      } else if (state.status == LoginStatus.complete) {
        Navigator.pop(context);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const HomeScreen()),
        //);
      }
    }, builder: (context, state) {
      if (state.status == LoginStatus.loading) {
        return const LoadingScreen();
      } else {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: bottomPadding),
                child: Text('Log In',
                    style: Theme.of(context).textTheme.headline2),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: bottomPadding),
                child: _emailField(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: bottomPadding),
                child: _passwordField(),
              ),
              SizedBox(
                width: fillParentWidth,
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.read<LoginCubit>().createEmailSession();
                    context.read<AuthenticationCubit>().authenticate();
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Submit',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: bottomPadding),
                child: const Text('Create an Account'),
              ),
              SizedBox(
                width: fillParentWidth,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      mercadoSecondary,
                      //padding: MaterialStateProperty.all(const EdgeInsets.all(22))
                    ),
                  ),
                  icon: const Icon(Icons.medical_information),
                  label: const Text('Register',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}

class _emailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          key: const Key('loginForm_emailInput_textField'),
          keyboardType: TextInputType.emailAddress,
          onChanged: (email) =>
              context.read<LoginCubit>().emailValidation(email),
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Email *',
              errorText: state.email.invalid
                  ? 'Please enter a valid email address.'
                  : null //? 'Errol' : null,
              ),
        );
      },
    );
  }
}

class _passwordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextFormField(
          key: const Key('loginForm_passwordInput_textField'),
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          onChanged: (password) =>
              context.read<LoginCubit>().passwordValidation(password),
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Password *',
              errorText: state.password.invalid
                  ? 'The password needs to have at least eight characters.'
                  : null //? 'Errol' : null,
              ),
          enableSuggestions: false,
          autocorrect: false,
        );
      },
    );
  }
}
