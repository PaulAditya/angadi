import 'package:angadi/screens/filter_screen.dart';
import 'package:angadi/screens/forgot_pass_screen.dart';
import 'package:angadi/screens/login_screen.dart';
import 'package:angadi/screens/main_screen.dart';
import 'package:angadi/screens/signup_screen.dart';
import 'package:angadi/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lato',
      ),
      routes: {
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        ForgotPassScreen.routeName: (ctx) => ForgotPassScreen(),
        MainScreen.routeName: (ctx) => MainScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),
      },
      home: Wrapper(),
    );
  }
}
