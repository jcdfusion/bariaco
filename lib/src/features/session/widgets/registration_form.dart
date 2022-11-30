import 'package:bariaco/src/common_widgets/loading_screen.dart';
import 'package:bariaco/src/features/session/cubits/register_cubit.dart';
import 'package:bariaco/utils/mercado_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../home/screens/home.dart';

// Create a Form widget.
class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    var fillParentWidth = MediaQuery.of(context).size.width;
    double bottomPadding = 15;
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state.status == RegisterStatus.failure) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('OOPS!!'),
                  content: Text(state.error.toString()),
                );
              });
        } else if (state.status == RegisterStatus.complete) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        }
      },
      builder: (context, state) {
        if (state.status == RegisterStatus.loading) {
          return const LoadingScreen();
        } else {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: Text('Create an account',
                      style: Theme.of(context).textTheme.headline2),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: _nameField(),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: bottomPadding),
                    child: _emailField()),
                Padding(
                    padding: EdgeInsets.only(bottom: bottomPadding),
                    child: _passwordField()),
                Row(
                  children: const [
                    Switch(value: false, onChanged: null),
                    Spacer(),
                    Text('I have read the Terms of Service'),
                    Spacer(),
                  ],
                ),
                Row(
                  children: const [
                    Switch(value: false, onChanged: null),
                    Spacer(),
                    Text('I wish to receive notifications'),
                    Spacer(),
                  ],
                ),
                BlocConsumer<RegisterCubit, RegisterState>(
                    listener: (context, state) {
                      if (state.status == RegisterStatus.failure &&
                          state.error != null) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('OOPS!!'),
                                content: Text(state.error as String),
                              );
                            });
                      }
                    },
                    buildWhen: (previous, current) =>
                        current.status == RegisterStatus.initial,
                    builder: (context, state) {
                      return SizedBox(
                        width: fillParentWidth,
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            if (state.formStatus == FormzStatus.valid) {
                              context.read<RegisterCubit>().createUser();
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              mercadoSecondary,
                              //padding: MaterialStateProperty.all(const EdgeInsets.all(22)
                            ),
                          ),
                          icon: const Icon(Icons.medical_information),
                          label: const Text('Register',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      );
                    }),
              ],
            ),
          );
        }
      },
    );
  }
}

/// Form Field Widgets
class _nameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return TextFormField(
          key: const Key('loginForm_nameInput_textField'),
          onChanged: (name) =>
              context.read<RegisterCubit>().nameValidation(name),
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Full Name *',
              errorText: state.name.invalid
                  ? 'The name has to have at least 2 characters.'
                  : null //? 'Errol' : null,
              ),
        );
      },
    );
  }
}

class _emailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          key: const Key('loginForm_emailInput_textField'),
          keyboardType: TextInputType.emailAddress,
          onChanged: (email) =>
              context.read<RegisterCubit>().emailValidation(email),
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
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextFormField(
          key: const Key('loginForm_passwordInput_textField'),
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          onChanged: (password) =>
              context.read<RegisterCubit>().passwordValidation(password),
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
