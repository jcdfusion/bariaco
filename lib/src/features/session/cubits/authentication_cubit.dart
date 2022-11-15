import 'package:appwrite/appwrite.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../../../../main.dart';
import '../../../models/user.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationUnknown());

  void getSession() async {
    Account account = Account(client);
    Future session = account.get();
    session.then((response) {
      print(response);
      emit(AuthenticationComplete(user: response));
    }).catchError((error) {
      emit(AuthenticationIncomplete());
    });
  }
}
