import 'package:angadi/screens/login_screen.dart';
import 'package:angadi/screens/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final User user = Provider.of(context);
    if(user == null){
      return LoginScreen();
    }else{
      return MainScreen();
    }
  }
}