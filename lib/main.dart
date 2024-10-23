import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcome_to_summoners_rift/widgets/loginfield.dart';
import 'package:welcome_to_summoners_rift/widgets/navigatorButton.dart';
import 'package:welcome_to_summoners_rift/widgets/passwordField.dart';
import "pg2.dart";

void main() {
  runApp(ProviderScope(child: FormApp()));
}

var emailText = TextEditingController();
var pass = TextEditingController();

class FormApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text("welcome summoner"),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'images/sr1.jpg',
              ),
            ),
            loginField(),
            passwordField(),
            navigatorButton(), // needs fixing > still nto fixed BTW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text("Forgot Password?")),
                TextButton(
                    onPressed: () {}, child: const Text("become a Summoner!")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
