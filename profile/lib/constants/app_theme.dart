import 'package:flutter/material.dart';

class AppTheme {
  static const Color backgroundColor = Color(0xFF1A1A1A);
  static const Color cardBackgroundColor = Color(0xFF2A2A2A);
  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color secondaryTextColor = Color(0xFF888888);
  static const Color accentColor = Color(0xFF00D4AA);
  static const Color borderColor = Color(0xFF333333);

  static const double defaultPadding = 16.0;
  static const double cardRadius = 12.0;
  static const double iconSize = 24.0;

  static const TextStyle headingStyle = TextStyle(
    color: primaryTextColor,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle bodyStyle = TextStyle(
    color: primaryTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle captionStyle = TextStyle(
    color: secondaryTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle numberStyle = TextStyle(
    color: primaryTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}
