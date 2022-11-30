part of 'login_cubit.dart';

enum LoginStatus { initial, loading, complete, failure }

class LoginState extends Equatable {
  final Email email;
  final Password password;
  final LoginStatus status;
  final FormzStatus formStatus;
  final String? error;

  const LoginState(
      {this.status = LoginStatus.initial,
      this.formStatus = FormzStatus.pure,
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.error});

  @override
  List<Object?> get props => [email, password, status, formStatus];

  LoginState copyWith(
      {Email? email,
      Password? password,
      LoginStatus? status,
      FormzStatus? formStatus,
      String? error}) {
    return LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        status: status ?? this.status,
        formStatus: formStatus ?? this.formStatus,
        error: error ?? this.error);
  }
}
