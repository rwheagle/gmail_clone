import 'package:flutter/material.dart';
import 'package:gmailclone/screens/email_screen.dart';
import 'package:gmailclone/screens/google/google_login_screen.dart';
import 'package:gmailclone/screens/google/google_password_screen.dart';
import 'package:gmailclone/screens/keystone_login_screen.dart';
import 'package:gmailclone/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

import 'model/email_data.dart';

void main() {
  runApp(MyApp());
}

///
/// Main App with the routes to each screen
///

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmailData(),
      child: MaterialApp(
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          GoogleLoginScreen.id: (context) => GoogleLoginScreen(),
          GooglePasswordScreen.id: (context) => GooglePasswordScreen(),
          EmailScreen.id: (context) => EmailScreen(),
          KeystoneLoginScreen.id: (context) => KeystoneLoginScreen(),
        },
      ),
    );
  }
}
