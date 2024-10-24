import 'package:flutter/material.dart';
import 'package:welcome_to_summoners_rift/main.dart';

class loginField extends StatelessWidget {
  loginField({super.key, required this.hint, required this.label});
  String hint;
  String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: emailText,
          decoration: InputDecoration(
              hintText: hint,
              labelText: label,
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.email_sharp)),
        ));
  }
}
