import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:welcome_to_summoners_rift/main.dart';
import 'package:welcome_to_summoners_rift/pg2.dart';

class functionButton extends StatelessWidget {
  functionButton({super.key, required this.buttonTesxt, required this.func});
  // final String path;
  String buttonTesxt;
  VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ElevatedButton(
        onPressed: () {
          func();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black87,
        ),
        child: Text(buttonTesxt),
      );
    });
  }
}
