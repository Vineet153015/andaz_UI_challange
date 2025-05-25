import 'package:flutter/material.dart';
import '../constants/app_theme.dart';

class CredGarageCard extends StatelessWidget {
  const CredGarageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppTheme.defaultPadding),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(141, 0, 0, 0),
        borderRadius: BorderRadius.circular(AppTheme.cardRadius),
        border: Border.all(color: AppTheme.borderColor, width: 1),
      ),
      child: Row(
        children: [
          // Car Icon
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppTheme.borderColor, width: 1),
            ),
            child: const Icon(
              Icons.directions_car,
              color: AppTheme.primaryTextColor,
              size: AppTheme.iconSize,
            ),
          ),
          const SizedBox(width: 16),

          // Text Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "get to know your vehicles, inside out",
                  style: AppTheme.captionStyle.copyWith(
                    fontSize: 13,
                    color: const Color.fromARGB(255, 172, 172, 172),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "CRED garage",
                      style: AppTheme.bodyStyle.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppTheme.primaryTextColor,
                        size: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
