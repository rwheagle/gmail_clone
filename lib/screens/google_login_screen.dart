import 'package:flutter/material.dart';
import 'package:gmailclone/screens/google_password_screen.dart';

//TODO: Add more documentation

class GoogleLoginScreen extends StatelessWidget {
  static const String id = 'google_login_screen';
  @override
  Widget build(BuildContext context) {
    String emailAddress = "me@email.com";
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Image(
                height: 70.0,
                image: AssetImage('images/google.png'),
              ),
            ),
            Text(
              'Sign in',
              style: TextStyle(
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'with your Google Account.',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Learn More',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {
                  emailAddress = value;
                },
                decoration: InputDecoration(
                  hintText: 'Email or phone',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 20.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Forgot email?',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 20.0),
                Text(
                  'Create account',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GooglePasswordScreen(
                                  emailAddress: emailAddress,
                                )));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                ),
                SizedBox(width: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
