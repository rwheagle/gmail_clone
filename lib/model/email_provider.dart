import 'package:flutter/material.dart';

import '../screens/google/google_login_screen.dart';
import '../screens/keystone_login_screen.dart';

//TODO: Add more documentation
List<EmailProvider> emails = [
  EmailProvider(
    name: 'Google',
    image: Image(
      image: AssetImage('images/GLogo.png'),
      height: 30.0,
    ),
    onPressedRoute: GoogleLoginScreen.id,
  ),
  EmailProvider(
    name: 'Outlook, Hotmail, and Live',
    image: Image(
      image: AssetImage('images/outlook.png'),
      height: 30.0,
    ),
    onPressedRoute: 'none',
  ),
  EmailProvider(
    name: 'Yahoo',
    image: Icon(
      Icons.email,
      color: Colors.purple[800],
    ),
    onPressedRoute: 'none',
  ),
  EmailProvider(
    name: 'Exchange and Office 365',
    image: Image(
      image: AssetImage('images/exchange.png'),
      height: 30.0,
    ),
    onPressedRoute: 'none',
  ),
  EmailProvider(
    name: 'Keystone',
    image: Icon(Icons.vpn_key),
    onPressedRoute: KeystoneLoginScreen.id,
  ),
  EmailProvider(
    name: 'Other',
    image: Icon(Icons.email),
    onPressedRoute: 'none',
  ),
];

class EmailProvider {
  String name;
  Widget image;
  String onPressedRoute;
  EmailProvider({this.name, this.image, this.onPressedRoute});
}
