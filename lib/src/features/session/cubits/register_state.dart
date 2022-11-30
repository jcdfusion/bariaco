part of 'register_cubit.dart';

enum RegisterStatus { initial, loading, complete, failure }

class RegisterState extends Equatable {
  final Email email;
  final Name name;
  final Password password;
  final String confirmPassword;
  final RegisterStatus status;
  final FormzStatus formStatus;
  final String? error;

  const RegisterState(
      {this.status = RegisterStatus.initial,
      this.formStatus = FormzStatus.pure,
      this.email = const Email.pure(),
      this.name = const Name.pure(),
      this.password = const Password.pure(),
      this.confirmPassword = '',
      this.error});

  @override
  List<Object> get props =>
      [email, name, password, confirmPassword, status, formStatus];

  RegisterState copyWith(
      {Email? email,
      Name? name,
      Password? password,
      String? confirmPassword,
      RegisterStatus? status,
      FormzStatus? formStatus,
      String? error}) {
    return RegisterState(
        email: email ?? this.email,
        name: name ?? this.name,
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        status: status ?? this.status,
        formStatus: formStatus ?? this.formStatus,
        error: error ?? this.error);
  }
}