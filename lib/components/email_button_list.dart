import 'package:flutter/material.dart';

import '../model/email_provider.dart';
import 'email_button.dart';

//TODO: Add more documentation
class EmailButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final email = emails[index];
        return Column(
          children: [
            EmailButton(
              text: email.name,
              icon: email.image,
              press: email.onPressedRoute,
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        );
      },
      itemCount: emails.length,
    );
  }
}
