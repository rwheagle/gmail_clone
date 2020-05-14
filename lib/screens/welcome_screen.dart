import 'package:flutter/material.dart';

import '../components/email_button_list.dart';

///
/// Welcome screen to login to app using various services
///
//TODO: Add more documentation
class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child:
                    Image(height: 40.0, image: AssetImage('images/gmail.png'))
                //Icon(Icons.email),
                ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Set up email',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(
              color: Colors.grey,
            ),
            Expanded(
              child: Container(
                child: EmailButtonList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
