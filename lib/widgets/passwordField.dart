import 'package:flutter/material.dart';
import 'package:welcome_to_summoners_rift/main.dart';

class passwordField extends StatelessWidget {
  const passwordField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(6.0),
        child: TextFormField(
          //email
          controller: pass,
          decoration: InputDecoration(
              hintText: "Enter your password",
              labelText: "Summoner password",
              suffixIcon: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.visibility),
              ),
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.lock_sharp)),
          obscuringCharacter: "*",
          textAlignVertical: TextAlignVertical.center,
        ));
  }
}
