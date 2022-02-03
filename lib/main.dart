import 'package:firebase_login_app/dashboard_screen.dart';
import 'package:firebase_login_app/home_screen.dart';
import 'package:firebase_login_app/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (conext) => const HomeScreen(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        DashboardScreen.routeName: (context) => const DashboardScreen()
      },
      home: HomeScreen(),
    );
  }
}
