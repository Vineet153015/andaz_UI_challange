import 'package:flutter/material.dart';
import '../constants/app_theme.dart';

class RewardItemWidget extends StatelessWidget {
  final String title;
  final String value;
  final String? subtitle;
  final VoidCallback? onTap;

  const RewardItemWidget({
    Key? key,
    required this.title,
    required this.value,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppTheme.borderColor, width: 0.8),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppTheme.defaultPadding,
          vertical: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Title and Subtitle
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTheme.bodyStyle),
                  SizedBox(height: 3),
                  Text(
                    value,
                    style: AppTheme.numberStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  if (subtitle != null) ...[
                    Text(
                      subtitle!,
                      style: AppTheme.captionStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ],
              ),
            ),

            // Value and Arrow
            Row(
              children: [
                const Icon(
                  Icons.chevron_right,
                  color: AppTheme.primaryTextColor,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
