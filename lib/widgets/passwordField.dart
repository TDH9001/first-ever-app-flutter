import 'package:flutter/material.dart';
import 'package:welcome_to_summoners_rift/main.dart';

class Passwordfield extends StatelessWidget {
  Passwordfield(
      {super.key, required this.hint, required this.label, required this.txt});
  String hint;
  String label;
  TextEditingController txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: txt,
          decoration: InputDecoration(
              hintText: hint,
              labelText: label,
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.password)),
        ));
  }
}
