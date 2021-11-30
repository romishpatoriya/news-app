
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> showAlertDialog(BuildContext context, {
  required String title,
  required String content,
  String? cancelActionText,
  required String defaultsActionText,
}) async {
  {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        shape: const CircleBorder(),
        actions: [
          if(cancelActionText != null)
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(cancelActionText),
            ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(defaultsActionText),
          ),
        ],
      ),
    );
  }
}