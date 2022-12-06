import 'package:equatable/equatable.dart';
import 'package:firebase_notes_app/services/auth/auth_user.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthState {
  const AuthState();
}

class AuthStateUnintialized extends AuthState {
  const AuthStateUnintialized();
}

class AuthStateLoggedIn extends AuthState {
  const AuthStateLoggedIn(this.user);

  final AuthUser user;
}

class AuthStateNeedsVerification extends AuthState {
  const AuthStateNeedsVerification();
}

class AuthStateLoggedOut extends AuthState with EquatableMixin {
  const AuthStateLoggedOut({
    required this.exception,
    required this.isLoading,
  });

  final Exception? exception;
  final bool isLoading;

  @override
  List<Object?> get props => [exception, isLoading];
}

class AuthStateRegistering extends AuthState {
  const AuthStateRegistering(this.exception);

  final Exception? exception;
}
