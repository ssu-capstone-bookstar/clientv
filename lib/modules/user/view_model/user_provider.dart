import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../auth/model/auth_response.dart';

part 'user_provider.g.dart';

@Deprecated('>>> 현호 : AuthState에서 통합 관리하려고 합니다. 07/05 작성')
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
