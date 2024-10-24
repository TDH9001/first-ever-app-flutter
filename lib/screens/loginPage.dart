import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:welcome_to_summoners_rift/screens/registerPage.dart';
import 'package:welcome_to_summoners_rift/screens/registerPage.dart';
import 'package:welcome_to_summoners_rift/screens/registerPage.dart';
import 'package:welcome_to_summoners_rift/widgets/loginfield.dart';
import 'package:welcome_to_summoners_rift/widgets/navigatorButton.dart';

import '../widgets/passwordField.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key, required this.s});
  String s;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("welcome summoner"),
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
                  onPressed: () {}, child: const Text("Forgot Password?")),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Registerpage.id,
                    );
                  },
                  child: const Text("become a Summoner!")),
            ],
          ),
        ],
      ),
    );
  }
}
