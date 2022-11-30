import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../api/user_repository.dart';
import '../../../models/user.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  final UserRepository _userRepository;

  AccountCubit(this._userRepository) : super(AccountInitial());

  Future<User?> getAccount() async {
    emit(AccountLoading());
    try {
      final user = await _userRepository.getAccount();
      emit(AccountLoadComplete(user: user));
      return user;
    } on UserException catch (exception) {
      emit(AccountLoadFailure(error: exception.message));
    }
  }
}
