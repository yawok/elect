import 'package:elect/screens/authentication/login.dart';
import 'package:elect/screens/authentication/register.dart';
import 'package:flutter/material.dart';

/// StatefulWidget
class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  /// boolean to display either the sign in screen or the register screen
  bool showSignIn = true;

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    /// if user wants to sign in then display the sign in screen
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else {
      /// else display te register screen
      return Register(toggleView: toggleView);
    }
  }
}
