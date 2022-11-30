part of 'account_cubit.dart';

abstract class AccountState extends Equatable {
  const AccountState();

  @override
  List<Object> get props => [];
}

class AccountInitial extends AccountState {}

class AccountLoading extends AccountState {}

class AccountLoadComplete extends AccountState {
  final User user;
  const AccountLoadComplete({required this.user});

  @override
  List<Object> get props => [user];
}

class AccountLoadFailure extends AccountState {
  final String error;

  const AccountLoadFailure({required this.error});

  @override
  List<Object> get props => [error];
}
