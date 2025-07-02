import 'package:book/auth/models/auth_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class User extends _$User {
  @override
  AuthResponse? build() {
    return null;
  }

  void setUser(AuthResponse user) {
    state = user;
  }

  void clearUser() {
    state = null;
  }
} 