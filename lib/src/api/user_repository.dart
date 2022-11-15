import 'package:bariaco/src/api/AppClient.dart';

import '../models/user.dart';

class UserRepository {
  final AppClient api = AppClient.internal();

  /// User Login/Logout Methods
  Future logInEmail(String email, String password) {
    return api.login(email, password);
  }

  Future logInOAuth(String provider) {
    return api.loginAuth(provider);
  }

  Future logOut() {
    return api.logout();
  }

  /// Create users and OAuth providers
  Future createUser(String email, String name, String password) async {
    return api.createUser(email, name, password);
  }

  Future createSessionOAuth(String oAuthProvider) async {
    return api.createOAuthUser(oAuthProvider);
  }

  Future<User> getUser() async {
    return api.getUser();
  }

  /// Get User Avatar
  Future getAvatarInitials() async {
    return api.getAvatarInitials();
  }
}
