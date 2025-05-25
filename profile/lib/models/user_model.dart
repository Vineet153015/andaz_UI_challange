class UserModel {
  final String name;
  final String memberSince;
  final String profileImageUrl;
  final int creditScore;
  final double lifetimeCashback;
  final double cashbackBalance;
  final int coins;
  final int maxReferralReward;

  UserModel({
    required this.name,
    required this.memberSince,
    required this.profileImageUrl,
    required this.creditScore,
    required this.lifetimeCashback,
    required this.cashbackBalance,
    required this.coins,
    required this.maxReferralReward,
  });

  static UserModel get sampleUser => UserModel(
    name: "andaz Kumar",
    memberSince: "member since Dec, 2020",
    profileImageUrl:
        "assets/profile_image.jpg", // You'll need to add this asset
    creditScore: 757,
    lifetimeCashback: 3.0,
    cashbackBalance: 0.0,
    coins: 26465583,
    maxReferralReward: 1000,
  );
}
