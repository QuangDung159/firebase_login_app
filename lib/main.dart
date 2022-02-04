import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login_app/dashboard_screen.dart';
import 'package:firebase_login_app/home_screen.dart';
import 'package:firebase_login_app/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (conext) => const HomeScreen(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        DashboardScreen.routeName: (context) => const DashboardScreen()
      },
      home: HomeScreen(),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return MyApp();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return MyApp();
      },
    );
  }
}
