import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:welcome_to_summoners_rift/main.dart';
import 'package:welcome_to_summoners_rift/pg2.dart';

class navigatorButton extends StatelessWidget {
  const navigatorButton(String s, {super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, path);
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
