import 'package:appwrite/appwrite.dart';
import 'package:bariaco/src/api/appClient.dart';

class AuthenticationException implements Exception {
  final String message;

  const AuthenticationException(this.message);

  @override
  String toString() => 'UserException: $message';
}

class AuthenticationRepository {

  Future<String?> getSession() async {
    try {
      final result = await account.getSession(sessionId: 'current');
      return result.$id;
    } on AppwriteException catch (exception) {
      return null;
    }
  }

  Future<bool> isAuthenticated() async {
    String? session = await getSession();
    if (session == null) {
      return false;
    } else {
      return true;
    }
  }

  Future<bool> removeSession() async {
    try {
      await account.deleteSessions();
      return true;
    } on AppwriteException catch (exception) {
      return false;
    }
  }
}
