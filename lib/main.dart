import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
//  StreamSubscription _intentDataStreamSubscription;
//  List<SharedMediaFile> _sharedFiles;
//  String _sharedText;
  static const platform = const MethodChannel('app.channel.shared.data');
  String dataShared = "No data";

  @override
  void initState() {
    super.initState();
    getSharedText();
  }

  getSharedText() async {
    var sharedData = await platform.invokeMethod("getSharedText");
    if (sharedData != null) {
      setState(() {
        dataShared = sharedData;
      });
    }
  }
//  @override
//  void initState() {
//    super.initState();
//    // For sharing images coming from outside the app while the app is in the memory
//    _intentDataStreamSubscription = ReceiveSharingIntent.getMediaStream()
//        .listen((List<SharedMediaFile> value) {
//      setState(() {
//        _sharedFiles = value;
//        print("Shared:" + (_sharedFiles?.map((f) => f.path)?.join(",") ?? ""));
//      });
//    }, onError: (err) {
//      print("getIntentDataStream error: $err");
//    });
//
//    // For sharing images coming from outside the app while the app is closed
//    ReceiveSharingIntent.getInitialMedia().then((List<SharedMediaFile> value) {
//      setState(() {
//        _sharedFiles = value;
//        print("Shared:" + (_sharedFiles?.map((f) => f.path)?.join(",") ?? ""));
//      });
//    });
//
//    // For sharing or opening urls/text coming from outside the app while the app is in the memory
//    _intentDataStreamSubscription =
//        ReceiveSharingIntent.getTextStream().listen((String value) {
//      setState(() {
//        _sharedText = value;
//        print("Shared: $_sharedText");
//      });
//    }, onError: (err) {
//      print("getLinkStream error: $err");
//    });
//
//    // For sharing or opening urls/text coming from outside the app while the app is closed
//    ReceiveSharingIntent.getInitialText().then((String value) {
//      setState(() {
//        _sharedText = value;
//        print("Shared: $_sharedText");
//      });
//    });
//  }
//
//  @override
//  void dispose() {
//    _intentDataStreamSubscription.cancel();
//    super.dispose();
//  }

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
