part of 'register_cubit.dart';

@immutable
abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegistrationLoading extends RegisterState {}

class RegistrationComplete extends RegisterState {}

class RegistrationFailure extends RegisterState {
  final String error;

  const RegistrationFailure({required this.error});

  @override
  List<Object> get props => [error];
}
