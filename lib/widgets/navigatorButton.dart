import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:welcome_to_summoners_rift/main.dart';
import 'package:welcome_to_summoners_rift/pg2.dart';

class navigatorButton extends StatelessWidget {
  navigatorButton({super.key, required this.path, required this.value});
  final String path;
  String value;
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
        child: Text(value),
      );
    });
  }
}
