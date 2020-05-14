import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:gmailclone/model/email.dart';

//TODO: Add more documentation
class EmailData extends ChangeNotifier {
  List<Email> _data = [
    Email(
      sender: 'Kyler',
      subject: 'Testing you',
      firstLine: 'Ipsum Dolores',
      time: '12:34 PM',
    ),
    Email(
      sender: 'Katy',
      subject: 'Hello',
      firstLine: 'Hello Sweetie',
      time: '11:05 AM',
    ),
    Email(
      sender: 'Phillip',
      subject: 'I am the Doctor',
      firstLine: 'The Last of the Timelords',
      time: 'May 20, 3030',
    ),
    Email(
      sender: 'James',
      subject: 'Star Wars vs Star Trek',
      firstLine: 'What is your opinion?',
      time: '10:42 AM',
      isRead: true,
    ),
    Email(
      sender: 'Brad',
      subject: 'Marvel is the Greatest',
      firstLine: 'HULK SMASH!!!! I am Groot.',
      time: '2:34 AM',
      isRead: true,
    ),
  ];
  UnmodifiableListView<Email> get emails {
    return UnmodifiableListView(_data);
  }
}
