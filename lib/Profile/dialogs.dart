import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

questionDialog({
  required BuildContext context,
  required String title,
  required String content,
  required Function func,
}) {
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          CupertinoDialogAction(
            child: const Text("Yes"),
            onPressed: () {
              func();
              Navigator.of(context).pop(true);
            },
          ),
          CupertinoDialogAction(
            child: const Text("No"),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        ],
      ),
    );
  } else {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          ElevatedButton(
            child: const Text("Yes"),
            onPressed: () {
              func();
              Navigator.of(context).pop(true);
            },
          ),
          ElevatedButton(
            child: const Text("No"),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        ],
      ),
    );
  }
}
errorDialog({
  required BuildContext context,
  required String title,
  required String content,
  VoidCallback? onDismiss,
}) {
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          CupertinoDialogAction(
            child: const Text("OK"),
            onPressed: () {
              if (onDismiss != null) {
                onDismiss();
              }
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  } else {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              if (onDismiss != null) {
                onDismiss();
              }
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
