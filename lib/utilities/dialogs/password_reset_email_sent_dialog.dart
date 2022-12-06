import 'package:firebase_notes_app/utilities/dialogs/generic_dialog.dart';
import 'package:flutter/material.dart';

Future<void> showPasswordResetEmailSentDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: "Password Reset",
    content: "We have sent you an email to reset your password",
    optionsBuilder: () => {
      "OK": null,
    },
  );
}
