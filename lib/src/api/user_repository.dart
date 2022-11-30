import 'package:appwrite/appwrite.dart';
import 'package:bariaco/src/api/appClient.dart';

import '../models/user.dart';

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

  Future<User> getAccount() async {
    try {
      final result = await account.get();
      return User(
          DateTime.parse(result.$createdAt),
          result.phone,
          DateTime.parse(result.$updatedAt),
          result.emailVerification,
          result.phoneVerification,
          DateTime.parse(result.registration),
          result.status,
          id: result.$id,
          name: result.name,
          email: result.email);
    } on AppwriteException catch (exception) {
      throw UserException(exception.message.toString());
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
}
