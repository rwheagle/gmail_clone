import 'package:flutter/material.dart';

//TODO: Add more documentation

class EmailButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final String press;
  const EmailButton({
    this.text,
    this.icon,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        padding: EdgeInsets.all(10.0),
        onPressed: () {
          if (press != 'none') {
            Navigator.pushNamed(context, press);
          }
        },
        child: Row(
          children: <Widget>[
            icon,
            SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
