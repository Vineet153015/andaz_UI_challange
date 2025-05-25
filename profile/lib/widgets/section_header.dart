import 'package:flutter/material.dart';
import '../constants/app_theme.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppTheme.defaultPadding,
        vertical: 12,
      ),
      child: Text(
        title.toUpperCase(),
        style: AppTheme.captionStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
