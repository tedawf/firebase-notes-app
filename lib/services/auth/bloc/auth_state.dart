import 'package:equatable/equatable.dart';
import 'package:firebase_notes_app/services/auth/auth_user.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthState {
  const AuthState({
    required this.isLoading,
    this.loadingText = "Please wait a moment",
  });

  final bool isLoading;
  final String? loadingText;
}

class AuthStateUnintialized extends AuthState {
  const AuthStateUnintialized({required bool isLoading})
      : super(isLoading: isLoading);
}

class AuthStateLoggedIn extends AuthState {
  const AuthStateLoggedIn({
    required this.user,
    required bool isLoading,
  }) : super(isLoading: isLoading);

  final AuthUser user;
}

class AuthStateNeedsVerification extends AuthState {
  const AuthStateNeedsVerification({required bool isLoading})
      : super(isLoading: isLoading);
}

class AuthStateLoggedOut extends AuthState with EquatableMixin {
  const AuthStateLoggedOut({
    required this.exception,
    required bool isLoading,
    String? loadingText,
  }) : super(
          isLoading: isLoading,
          loadingText: loadingText,
        );

  final Exception? exception;

  @override
  List<Object?> get props => [exception, isLoading];
}

class AuthStateRegistering extends AuthState {
  const AuthStateRegistering({
    required this.exception,
    required bool isLoading,
  }) : super(isLoading: isLoading);

  final Exception? exception;
}
