import 'package:bariaco/src/api/user_repository.dart';
import 'package:bariaco/src/features/session/cubits/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../src/features/session/cubits/authentication_cubit.dart';

List<BlocProvider> providersList = [
  BlocProvider<AuthenticationCubit>(
      create: (BuildContext authenticationContext) => AuthenticationCubit()),
  BlocProvider<RegisterCubit>(
      create: (BuildContext registerContext) => RegisterCubit(UserRepository()))
];
