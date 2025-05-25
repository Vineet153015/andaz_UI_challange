import 'package:flutter/material.dart';
import '../constants/app_theme.dart';

class InfoRowWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String? subtitle;
  final VoidCallback? onTap;
  final bool showArrow;

  const InfoRowWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    this.subtitle,
    this.onTap,
    this.showArrow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppTheme.borderColor, width: 0.5),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppTheme.defaultPadding,
          vertical: 16,
        ),
        child: Row(
          children: [
            // Icon
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppTheme.borderColor, width: 1),
              ),
              child: Icon(icon, color: Colors.grey, size: 20),
            ),
            const SizedBox(width: 16),

            // Title and Subtitle
            Expanded(
              child: Row(
                children: [
                  Text(title, style: AppTheme.bodyStyle),
                  if (subtitle != null) ...[
                    const SizedBox(width: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        subtitle!,
                        style: AppTheme.captionStyle.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),

            // Value
            Text(value, style: AppTheme.numberStyle),

            // Arrow
            if (showArrow) ...[
              const SizedBox(width: 8),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppTheme.primaryTextColor,
                size: 16,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
