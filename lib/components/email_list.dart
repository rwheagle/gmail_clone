import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/email_data.dart';
import 'email_card.dart';

//TODO: Add more documentation
class EmailList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emails = Provider.of<EmailData>(context).emails;
    return ListView.builder(
      itemBuilder: (context, index) {
        final email = emails[index];
        return Column(
          children: [
            EmailCard(email: email),
          ],
        );
      },
      itemCount: emails.length,
    );
  }
}
