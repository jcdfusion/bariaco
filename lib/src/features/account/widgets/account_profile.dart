import 'package:bariaco/src/api/user_repository.dart';
import 'package:bariaco/src/common_widgets/custom_divider.dart';
import 'package:bariaco/src/features/account/screens/profile_name_change.dart';
import 'package:bariaco/src/features/authentication/cubit/authentication_cubit.dart';
import 'package:bariaco/src/features/session/screens/social_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/user.dart';
import '../screens/profile_email_change.dart';
import '../screens/profile_location_change.dart';
import '../screens/profile_password_change.dart';
import '../screens/profile_phone_change.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  ProfileBodyState createState() {
    return ProfileBodyState();
  }
}

class ProfileBodyState extends State<ProfileBody> {
  late Future<User> user;

  @override
  void initState() {
    super.initState();
    user = UserRepository().getAccount();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (authenticationContext, state) {
        if (state is AuthenticationIncomplete ||
            state is AuthenticationUnknown) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SocialLoginScreen()),
          );
        }
      },
      child: Container(
          width: MediaQuery.of(context).size.width - 28,
          margin: const EdgeInsets.all(10),
          child: Wrap(
            children: [
              Row(
                children: [
                  FutureBuilder(
                      future: user,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(snapshot.data?.name as String);
                        } else {
                          return Text('USAHHHH');
                        }
                      }),
                  //Text('Michael Scarn'),
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
                  Text('email@email.com'),
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
                  Text('787-818-1234'),
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
              const CustomDivider(),
              //const Divider(height: 10),
              Center(
                child: TextButton(
                    onPressed: () {
                      context.read<AuthenticationCubit>().deAuthenticate();
                    },
                    child: const Text('Log Out')),
              )
            ],
          )),
    );
  }
}
