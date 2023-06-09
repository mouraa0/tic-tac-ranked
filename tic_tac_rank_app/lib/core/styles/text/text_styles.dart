import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle pageTitle = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle pageSubtitle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  static TextStyle pageSubtitleHighlighted = const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  static TextStyle details = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  static TextStyle inputLabel = const TextStyle(
    color: Colors.black,
  );

  static TextStyle buttonBig = const TextStyle(
    color: Colors.white,
    fontSize: 18,
  );

  static TextStyle textSpan = const TextStyle(
    color: Colors.grey,
    fontSize: 14,
  );

  static TextStyle textSpanButton = const TextStyle(
    color: Colors.black,
    fontSize: 14,
    decoration: TextDecoration.underline,
  );

  static TextStyle buttonExternalAccount = const TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle errorSnackBarTitle = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static TextStyle errorSnackBarMsg = TextStyle(
    color: Colors.red[200],
    fontSize: 16,
  );
}
