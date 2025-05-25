import 'package:flutter/material.dart';
import '../constants/app_theme.dart';
import '../models/user_model.dart';

class ProfileHeader extends StatelessWidget {
  final UserModel user;

  const ProfileHeader({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.defaultPadding),
      child: Row(
        children: [
          // Profile Image
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.cardBackgroundColor,
              border: Border.all(color: AppTheme.borderColor, width: 2),
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.brown,
              child: Icon(Icons.person, color: Colors.white, size: 40),
            ),
          ),
          const SizedBox(width: 16),

          // User Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name, style: AppTheme.headingStyle),
                const SizedBox(height: 4),
                Text(
                  user.memberSince,
                  style: AppTheme.captionStyle.copyWith(fontSize: 20),
                ),
              ],
            ),
          ),

          // Edit Button
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppTheme.borderColor, width: 1),
            ),
            child: const Icon(
              Icons.edit_outlined,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
