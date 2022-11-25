import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_notes_app/constants/routes.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify email"),
      ),
      body: Column(
        children: [
          const Text(
              "We've sent you an email verification. Please check your inbox or junk mail."),
          const Text(
              "If you haven't received a verification email yet, press the button below to send again."),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              devtools.log(user.toString());
              await user?.sendEmailVerification();
            },
            child: const Text("Send email verification"),
          ),
          TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              if (!mounted) return;
              Navigator.of(context).pushNamedAndRemoveUntil(
                loginRoute,
                (route) => false,
              );
            },
            child: const Text("Go back"),
          ),
        ],
      ),
    );
  }
}
