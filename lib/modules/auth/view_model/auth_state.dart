sealed class AuthState {}

class AuthIdle extends AuthState {}

class AuthSuccess extends AuthState {
  final int memberId;
  final String nickName;
  final String profileImage;

  AuthSuccess({
    required this.memberId,
    required this.nickName,
    required this.profileImage,
  });
}

class AuthFailed extends AuthState {
  final String errorMsg;
  final int errorCode;

  AuthFailed({
    required this.errorMsg,
    required this.errorCode,
  });
}

class AuthLoading extends AuthState {}
