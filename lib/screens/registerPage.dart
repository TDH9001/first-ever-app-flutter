import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:welcome_to_summoners_rift/widgets/loginfield.dart';
import 'package:welcome_to_summoners_rift/widgets/navigatorButton.dart';

import '../widgets/passwordField.dart';

class Registerpage extends StatelessWidget {
  Registerpage({super.key});

  static String id = "registerPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("register me PLS "),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          const Image(
            image: AssetImage(
              'images/sr1.jpg',
            ),
          ),
          loginField(
            hint: "enter your email adress ",
            label: "email adress",
          ),
          Passwordfield(
            hint: "enter the target password",
            label: "password ",
          ),
          // navigatorButton(path: "pg2"), // needs fixing > still nto fixed BTW
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("login instead ??")),
            ],
          ),
        ],
      ),
    );
  }
}
