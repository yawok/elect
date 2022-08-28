

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authentication/authenticate.dart';
import 'majorScreens/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// if user is logged in display the Home else Log in or Sign up page screen
    final user = Provider.of<User?>(context);
    if (user == null){
      return const Authenticate();
    }else{
      return const Home();
    }

  }
}
