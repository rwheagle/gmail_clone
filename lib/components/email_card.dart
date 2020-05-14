import 'package:flutter/material.dart';

import '../model/email.dart';

//TODO: Add more documentation
class EmailCard extends StatelessWidget {
  final Email email;
  EmailCard({this.email});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.lightBlueAccent,
              child: Text(
                email.sender.substring(0, 1),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      email.sender,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight:
                            email.isRead ? FontWeight.normal : FontWeight.bold,
                      ),
                    ),
                    Text(
                      email.time,
                      style: TextStyle(
                        fontWeight:
                            email.isRead ? FontWeight.normal : FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            email.subject,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: email.isRead
                                  ? FontWeight.normal
                                  : FontWeight.bold,
                            ),
                          ),
                          Text(
                            email.firstLine,
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
