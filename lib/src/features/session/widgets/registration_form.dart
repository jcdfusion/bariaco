import 'package:bariaco/src/features/home/screens/home.dart';
import 'package:bariaco/src/features/session/cubits/register_cubit.dart';
import 'package:bariaco/utils/mercado_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Create a Form widget.
class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class RegisterFormState extends State<RegisterForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final nameRegController = TextEditingController();
  final emailRegController = TextEditingController();
  final passwordRegController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameRegController.dispose();
    emailRegController.dispose();
    passwordRegController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var fillParentWidth = MediaQuery.of(context).size.width;
    double bottomPadding = 15;
    return BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
      if (state is RegistrationFailure) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('OOPS!!'),
                content: Text(state.error),
              );
            });
      } else if (state is RegistrationComplete) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    }, builder: (context, state) {
      if (state is RegistrationLoading) {
        return Column(
          children: const [CircularProgressIndicator()],
        );
        // } else if (state is RegistrationFailure) {
        //   final String error = state.error;
        //   return Center(child: Text(error));
      } else {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: Text('Create an account',
                      style: Theme.of(context).textTheme.headline2),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: TextFormField(
                    controller: nameRegController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name *',
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
                    controller: emailRegController,
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
                    controller: passwordRegController,
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
                SizedBox(
                  width: fillParentWidth,
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      context.read<RegisterCubit>().createUser(
                          emailRegController.text,
                          nameRegController.text,
                          passwordRegController.text);
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
                ),
              ],
            ),
          ),
        );
      }
    });
    //   Container(
    //   margin: const EdgeInsets.all(10),
    //   child: Form(
    //     key: _formKey,
    //     child: Column(
    //       children: [
    //         Padding(
    //           padding: EdgeInsets.only(bottom: bottomPadding),
    //           child: Text('Create an account',
    //               style: Theme.of(context).textTheme.headline2),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(bottom: bottomPadding),
    //           child: TextFormField(
    //             controller: nameRegController,
    //             keyboardType: TextInputType.emailAddress,
    //             decoration: const InputDecoration(
    //               border: OutlineInputBorder(),
    //               labelText: 'Name *',
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
    //             controller: emailRegController,
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
    //             controller: passwordRegController,
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
    //         Row(
    //           children: const [
    //             Switch(value: false, onChanged: null),
    //             Spacer(),
    //             Text('I have read the Terms of Service'),
    //             Spacer(),
    //           ],
    //         ),
    //         Row(
    //           children: const [
    //             Switch(value: false, onChanged: null),
    //             Spacer(),
    //             Text('I wish to receive notifications'),
    //             Spacer(),
    //           ],
    //         ),
    //         SizedBox(
    //           width: fillParentWidth,
    //           child: ElevatedButton.icon(
    //             onPressed: () async {
    //               // Register User
    //               Account account = Account(client);
    //
    //               Future user = account.create(
    //                   userId: ID.unique(),
    //                   email: emailRegController.text,
    //                   password: passwordRegController.text,
    //                   name: nameRegController.text
    //               );
    //               user
    //                   .then((response) {
    //               }).catchError((error) {
    //                 print(error.response['message']);
    //               });
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
