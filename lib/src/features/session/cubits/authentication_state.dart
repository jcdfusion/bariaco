part of 'authentication_cubit.dart';

@immutable
abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

class AuthenticationUnknown extends AuthenticationState {}

class AuthenticationComplete extends AuthenticationState {
  final User user;

  const AuthenticationComplete({required this.user});

  @override
  List<Object?> get props => [user];
}

class AuthenticationIncomplete extends AuthenticationState {}
