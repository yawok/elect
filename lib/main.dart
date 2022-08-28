import 'package:elect/screens/majorScreens/candidates.dart';
import 'package:elect/screens/majorScreens/home.dart';
import 'package:elect/screens/majorScreens/liveFeed.dart';
import 'package:elect/screens/sideScreens/about.dart';
import 'package:elect/screens/sideScreens/developers.dart';
import 'package:elect/screens/sideScreens/userProfile.dart';
import 'package:elect/screens/splash.dart';
import 'package:elect/services/auth_service.dart';
import 'package:elect/state/vote.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      ///get user changes (either user is logged in or logged out)
        providers: [
          StreamProvider<User?>.value(
            value: AuthenticationService().getUser(),
            initialData: null,
          ),

          /// get voteState changes
          ChangeNotifierProvider(create: (_) => VoteState())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),

          /// Routes to screens
          routes: {
            '/home': (context) => const Home(),
            '/candidates': (context) => const VoteWidget(),
            '/userProfile': (context) => const UserProfile(),
            '/about': (context) => const About(),
            '/developers': (context) => const Developer(),
            '/results': (context) => const Results(),
            // '/wrapper': (context) => const Wrapper(),
          },
        ));
  }
}