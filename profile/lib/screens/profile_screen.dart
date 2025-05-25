import 'package:flutter/material.dart';
import '../constants/app_theme.dart';
import '../models/user_model.dart';
import '../widgets/profile_header.dart';
import '../widgets/cred_garage_card.dart';
import '../widgets/info_row_widget.dart';
import '../widgets/section_header.dart';
import '../widgets/reward_item_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserModel.sampleUser;

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: AppTheme.primaryTextColor,
        ),
        title: const Text('Profile', style: AppTheme.headingStyle),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppTheme.borderColor, width: 1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.grey,
                  size: 16,
                ),
                const SizedBox(width: 6),
                Text(
                  'support',
                  style: AppTheme.captionStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            ProfileHeader(user: user),

            const SizedBox(height: 20),

            // CRED Garage Card
            const CredGarageCard(),

            const SizedBox(height: 30),

            // Credit Score
            InfoRowWidget(
              icon: Icons.assessment_outlined,
              title: "credit score",
              value: "${user.creditScore}",
              subtitle: "REFRESH AVAILABLE",
              onTap: () {},
            ),

            // Lifetime Cashback
            InfoRowWidget(
              icon: Icons.currency_rupee,
              title: "lifetime cashback",
              value: "₹${user.lifetimeCashback.toInt()}",
              onTap: () {},
            ),

            // Bank Balance
            InfoRowWidget(
              icon: Icons.account_balance_outlined,
              title: "bank balance",
              value: "check",
              onTap: () {},
            ),

            // const SizedBox(height: 30),
            Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionHeader(title: "YOUR REWARDS & BENEFITS"),

                  RewardItemWidget(
                    title: "cashback balance",
                    value: "₹${user.cashbackBalance.toInt()}",
                    onTap: () {},
                  ),

                  RewardItemWidget(
                    title: "coins",
                    value: user.coins.toString().replaceAllMapped(
                      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                      (Match m) => '${m[1]},',
                    ),
                    onTap: () {},
                  ),

                  RewardItemWidget(
                    title: "win upto Rs ${user.maxReferralReward}",
                    value: "",
                    subtitle: "refer and earn",
                    onTap: () {},
                  ),

                  const SizedBox(height: 30),

                  // Transactions & Support Section
                  const SectionHeader(title: "TRANSACTIONS & SUPPORT"),

                  RewardItemWidget(
                    title: "all transactions",
                    value: "",
                    onTap: () {},
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),

            // Rewards & Benefits Section
          ],
        ),
      ),
    );
  }
}
