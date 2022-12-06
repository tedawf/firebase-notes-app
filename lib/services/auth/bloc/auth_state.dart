import 'package:firebase_notes_app/services/auth/auth_user.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthState {
  const AuthState();
}

class AuthStateLoading extends AuthState {
  const AuthStateLoading();
}

class AuthStateLoggedIn extends AuthState {
  const AuthStateLoggedIn(this.user);
  final AuthUser user;
}

class AuthStateNeedsVerification extends AuthState {
  const AuthStateNeedsVerification();
}

class AuthStateLoggedOut extends AuthState {
  const AuthStateLoggedOut(this.exception);
  final Exception? exception;
}

class AuthStateLogoutFailure extends AuthState {
  const AuthStateLogoutFailure(this.exception);
  final Exception exception;
}
