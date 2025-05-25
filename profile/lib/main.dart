import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/profile_screen.dart';
import 'constants/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRED Profile',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: AppTheme.backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppTheme.backgroundColor,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
