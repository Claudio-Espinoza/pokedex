import 'package:flutter/material.dart';

class Util {
  static Future<void> redirectToPage(BuildContext context, Widget page) async {
    if (!context.mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }
}
