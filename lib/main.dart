import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcome_to_summoners_rift/screens/loginPage.dart';
import 'package:welcome_to_summoners_rift/screens/registerPage.dart';
import 'package:welcome_to_summoners_rift/widgets/loginfield.dart';
import 'package:welcome_to_summoners_rift/widgets/navigatorButton.dart';
import 'package:welcome_to_summoners_rift/widgets/passwordField.dart';
import "pg2.dart";
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: chatApp()));
}

// var emailText = TextEditingController();
// var pass = TextEditingController();

class chatApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      routes: {
        "pg2": (context) => Pg2(),
        "loginPage": (context) =>
            loginPage(s: "this is the main page brothers"),
        "registerPage": (context) => Registerpage(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == "registerPage") {
      //     final args = settings.arguments as String;
      //   }
      // },
      initialRoute: "loginPage",
    );
  }
}
