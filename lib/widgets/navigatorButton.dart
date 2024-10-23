import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:welcome_to_summoners_rift/main.dart';
import 'package:welcome_to_summoners_rift/pg2.dart';

class navigatorButton extends StatelessWidget {
  const navigatorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Pg2(
                      email: emailText.text,
                      pass: pass.text,
                    )),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black87,
        ),
        child: const Text("Jump Into Action Summoner"),
      );
    });
  }
}
