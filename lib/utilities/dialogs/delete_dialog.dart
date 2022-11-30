import 'package:firebase_notes_app/utilities/dialogs/generic_dialog.dart';
import 'package:flutter/material.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: "Delete",
    content: "Are you sure you want to delete this item?",
    optionsBuilder: () => {
      "Cancel": false,
      "Confirm": true,
    },
  ).then((value) => value ?? false);
}
