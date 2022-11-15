import 'package:bariaco/src/features/session/cubits/authentication_cubit.dart';
import 'package:bariaco/src/features/session/screens/register.dart';
import 'package:bariaco/utils/mercado_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Create a Form widget.
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class LoginFormState extends State<LoginForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var fillParentWidth = MediaQuery.of(context).size.width;
    double bottomPadding = 15;
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
        listener: (context, state) {
      if (state is AuthenticationComplete) {
        showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                title: Text('OOPS!!'),
                content: Text('You are good ma\'man'),
              );
            });
      }
    }, builder: (context, state) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: bottomPadding),
                    child:
                    Text('Log In', style: Theme.of(context).textTheme.headline2),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: bottomPadding),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email *',
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: bottomPadding),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password *',
                      ),
                      // The validator receives the text that the user has entered.
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: fillParentWidth,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
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
            ),
          );
    }
    );
    // Container(
    //   margin: const EdgeInsets.all(10),
    //   child: Form(
    //     key: _formKey,
    //     child: Column(
    //       children: [
    //         Padding(
    //           padding: EdgeInsets.only(bottom: bottomPadding),
    //           child:
    //               Text('Log In', style: Theme.of(context).textTheme.headline2),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(bottom: bottomPadding),
    //           child: TextFormField(
    //             keyboardType: TextInputType.emailAddress,
    //             decoration: const InputDecoration(
    //               border: OutlineInputBorder(),
    //               labelText: 'Email *',
    //             ),
    //             // The validator receives the text that the user has entered.
    //             validator: (value) {
    //               if (value == null || value.isEmpty) {
    //                 return 'Please enter some text';
    //               }
    //               return null;
    //             },
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(bottom: bottomPadding),
    //           child: TextFormField(
    //             decoration: const InputDecoration(
    //               border: OutlineInputBorder(),
    //               labelText: 'Password *',
    //             ),
    //             // The validator receives the text that the user has entered.
    //             obscureText: true,
    //             enableSuggestions: false,
    //             autocorrect: false,
    //             validator: (value) {
    //               if (value == null || value.isEmpty) {
    //                 return 'Please enter some text';
    //               }
    //               return null;
    //             },
    //           ),
    //         ),
    //         SizedBox(
    //           width: fillParentWidth,
    //           child: ElevatedButton.icon(
    //             onPressed: () {
    //               // Validate returns true if the form is valid, or false otherwise.
    //               if (_formKey.currentState!.validate()) {
    //                 // If the form is valid, display a snackbar. In the real world,
    //                 // you'd often call a server or save the information in a database.
    //                 ScaffoldMessenger.of(context).showSnackBar(
    //                   const SnackBar(content: Text('Processing Data')),
    //                 );
    //               }
    //             },
    //             icon: const Icon(Icons.arrow_forward),
    //             label: const Text('Submit',
    //                 style: TextStyle(fontWeight: FontWeight.bold)),
    //           ),
    //         ),
    //         const Divider(),
    //         Padding(
    //           padding: EdgeInsets.only(top: 10, bottom: bottomPadding),
    //           child: const Text('Create an Account'),
    //         ),
    //         SizedBox(
    //           width: fillParentWidth,
    //           child: ElevatedButton.icon(
    //             onPressed: () {
    //               Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                     builder: (context) => const RegisterScreen()),
    //               );
    //             },
    //             style: ButtonStyle(
    //               backgroundColor: MaterialStateProperty.all(
    //                 mercadoSecondary,
    //                 //padding: MaterialStateProperty.all(const EdgeInsets.all(22))
    //               ),
    //             ),
    //             icon: const Icon(Icons.medical_information),
    //             label: const Text('Register',
    //                 style: TextStyle(fontWeight: FontWeight.bold)),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
