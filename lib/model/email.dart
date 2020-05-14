import 'package:flutter/material.dart';

//TODO: Add more documentation
class Email {
  String sender;
  String subject;
  String firstLine;
  String time;
  bool isRead;
  Email({
    @required this.sender,
    @required this.subject,
    @required this.firstLine,
    @required this.time,
    this.isRead = false,
  });
}
