import 'package:flutter/material.dart';

import '../components/email_list.dart';

///
/// A successful login will show this screen
/// Eventually you could make this a functional implementation with Firebase
///

//TODO: Add more documentation
class EmailScreen extends StatelessWidget {
  static const String id = 'email_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search in mail',
                              prefixIcon: const Icon(
                                Icons.dehaze,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          child: Text(
                            'K',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('INBOX'),
              ),
              Expanded(child: EmailList()),
            ],
          ),
        ),
      ),
    );
  }
}
