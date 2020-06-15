import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:uuid/uuid.dart';

///
/// This screen loads while the app connects to Keystone for authorization
///
//TODO: Add more documentation
class KeystoneLoginScreen extends StatefulWidget {
  static const String id = 'keystone_login_screen';
  @override
  _KeystoneLoginScreenState createState() => _KeystoneLoginScreenState();
}

class _KeystoneLoginScreenState extends State<KeystoneLoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    getKeystoneAuthentication();
  }

  void getKeystoneAuthentication() async {
    try {
      //   List<Application> apps = await DeviceApps.getInstalledApplications();
      // bool hasKeystone = await AppAvailability.isAppEnabled(
      // "com.example.lets_auth_ui_attempt");
      // print(hasKeystone);
      //  if (hasKeystone) {
      //Opens App
      //AppAvailability.launchApp("com.example.lets_auth_ui_attempt");
      //TODO: add functionality connecting to Keystone or CA
      var uuid = Uuid();
      String sessionId = uuid.v4();
      String passInfo = jsonEncode(
        {
          'url': 'gmail.letsauth.org/$sessionId',
        },
      );
      await FlutterShare.share(
        title: passInfo,
        text: passInfo,
      );
      print(passInfo);
      // }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Icon(
              Icons.vpn_key,
              size: 100.0,
            ),
            SizedBox(height: 40.0),
            CircularProgressIndicator(),
            SizedBox(height: 20.0),
            Text('Connecting to Keystone...'),
            Expanded(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
