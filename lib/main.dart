import 'package:beehive_app/Backends/authentication_service.dart';
import 'package:beehive_app/Welcome/signupupdate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:beehive_app/Welcome/loginupdate.dart';
import 'package:beehive_app/Focus/breathing_exercises.dart';
import 'package:beehive_app/Focus/focus_main.dart';
import 'package:beehive_app/Landing%20Page/LandingPage.dart';
import 'package:beehive_app/Uplifter/podcast.dart';
import 'package:beehive_app/Uplifter/uplifter_main.dart';
import 'package:beehive_app/Welcome/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/Focus/breathing_exercises.dart';
import 'package:beehive_app/bnav.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStatechanges,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Beehive',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: podcastMain(),
        //home: signupUpdate(),
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseUser = context.watch<User>();
    if (FirebaseUser != null) {
      return LandingPage(); // <-------- change this page if you need to test some pages
    }
    return SignInPage();
  }
}
