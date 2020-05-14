import 'package:flutter/material.dart';
import 'package:gmailclone/screens/email_screen.dart';

///
/// This is the password screen it accepts any password at the moment but it is
///
//TODO: Add more documentation
class GooglePasswordScreen extends StatefulWidget {
  static const String id = 'google_password_screen';
  final String emailAddress;
  GooglePasswordScreen({this.emailAddress = 'me@email.com'});

  @override
  _GooglePasswordScreenState createState() => _GooglePasswordScreenState();
}

class _GooglePasswordScreenState extends State<GooglePasswordScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 20.0),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.person_pin),
                SizedBox(width: 10.0),
                Text(
                  widget.emailAddress,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Theme(
                data: ThemeData.light().copyWith(
                  primaryColor: Colors.blue[700],
                  primaryColorDark: Colors.blue[900],
                ),
                child: TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    labelText: 'Enter your password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: _obscureText
                          ? Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, EmailScreen.id);
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
