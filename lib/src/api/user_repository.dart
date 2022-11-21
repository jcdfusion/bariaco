import 'package:appwrite/appwrite.dart';
import 'package:bariaco/src/api/appClient.dart';

class UserException implements Exception {
  final String message;

  const UserException(this.message);

  @override
  String toString() => 'UserException: $message';
}

class UserRepository {
  /// User Account Endpoints
  Future createAccount(String email, String password, String name) async {
    try {
      final result = await account.create(
          userId: ID.unique(), email: email, password: password, name: name);
      await createEmailSession(email, password);
      return result;
    } on AppwriteException catch (exception) {
      String error = 'An unknown error occurred.';
      if (exception.code == 400) {
        error = 'Password should be at least 8 characters long.';
      } else if (exception.code == 409) {
        error = 'User already exists.';
      }
      throw UserException(error);
    }
  }

  Future<String> createEmailSession(String email, String password) async {
    try {
      final result =
          await account.createEmailSession(email: email, password: password);
      return result.$id;
    } on AppwriteException catch (exception) {
      String error = 'An unknown error occurred.';
      if (exception.code == 400) {
        error =
            'Make sure you are using a valid email and that the password is at least 8 characters long.';
      } else if (exception.code == 401) {
        error = 'The user name and password combination is incorrect.';
      }
      throw UserException(error);
    }
  }

  Future createOAuth2Session(String provider) async {
    try {
      await account.createOAuth2Session(provider: provider);
    } on AppwriteException catch (exception) {
      String error = 'There was an issue during authentication';
      throw UserException(error);
    }
  }
// Future createOAuth2Session(String provider) async {
//   return await _account.createOAuth2Session(provider: provider);
// }
// Future getAccount() async {
//   return await _account.get();
// }
// Future getSession() async {
//   return await _account.getSession(sessionId: 'current');
// }
// Future updateName(String name) async {
//   return _account.updateName(name: name);
// }
// Future updatePassword(String password) async {
//   return _account.updatePassword(password: password);
// }
// Future updateEmail(String email, String password) async {
//   return _account.updateEmail(email: email, password: password);
// }
// Future updatePhone(String phone, String password) async {
//   return _account.updatePhone(phone: phone, password: password);
// }

// Future<bool> isAuthenticated() async {
//   try {
//     Future result = api.account.getSession(sessionId: 'current');
//   } catch(error){
//     throw UserException(error.toString());
//   }
// }

// void logInEmail(String email, String password) async {}
//
// void logInOAuth(String provider) async {}
//
// void logOut() async {}
//
// /// Create users and OAuth providers
// Future<String> createUser(String email, String name, String password) async {
//   try {
//     final result = await api.createAccount(email, password, name);
//     return 'yay';
//   } on Exception catch (error) {
//     throw UserException(error.toString());
//   }
// }
//
// void createSessionOAuth(String oAuthProvider) async {}
//
// void getUser() async {}
//
// /// Get User Avatar
// void getAvatarInitials() async {}
}
