part of 'authentication_cubit.dart';

@immutable
abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

class AuthenticationUnknown extends AuthenticationState {}

class AuthenticationComplete extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class AuthenticationIncomplete extends AuthenticationState {}
