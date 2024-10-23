import 'package:flutter/material.dart';
import 'package:welcome_to_summoners_rift/main.dart';

class loginField extends StatelessWidget {
  const loginField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: emailText,
          decoration: const InputDecoration(
              hintText: "Enter your summoner adress",
              labelText: "Summoner adress",
              border: OutlineInputBorder(),
              icon: Icon(Icons.email_sharp)),
        ));
  }
}
