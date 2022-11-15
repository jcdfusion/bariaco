import 'package:appwrite/appwrite.dart';

import '../models/user.dart';

class AppClient {
  static const apiEndpoint = 'http://10.0.2.2/v1';
  static const projectId = 'mercadopr';
  late final Client _client;
  late final Account _account;
  late final Storage _storage;
  late final Databases _databases;

  AppClient.internal() {
    _client = Client();
    _client
        .setEndpoint(apiEndpoint)
        .setProject(projectId)
        .setSelfSigned(status: true);
    _account = Account(_client);
  }

  /// ///////////////
  /// User Endpoints
  /// //////////////

  Future login(String email, String password) {
    return _account.createEmailSession(email: email, password: password);
  }

  Future loginAuth(String provider) {
    return _account.createOAuth2Session(provider: provider);
  }

  Future logout() {
    return _account.deleteSession(sessionId: 'current');
  }

  Future createUser(String email, String name, String password) async {
    return _account.create(
        userId: ID.unique(), email: email, password: password, name: name);
  }

  Future createOAuthUser(String oAuthProvider) async {
    return _account.createOAuth2Session(provider: oAuthProvider);
  }

  Future<User> getUser() async {
    final result = _account.get();
    return User.fromJson(result as Map<String, dynamic>);
  }

  Future getAvatarInitials() async {
    Avatars avatars = Avatars(_client);
    return avatars.getInitials();
  }
}
