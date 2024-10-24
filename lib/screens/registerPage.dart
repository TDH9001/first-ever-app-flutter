import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:welcome_to_summoners_rift/widgets/functionButton.dart';
import 'package:welcome_to_summoners_rift/widgets/loginfield.dart';
import 'package:welcome_to_summoners_rift/widgets/navigatorButton.dart';

import '../widgets/passwordField.dart';

class Registerpage extends StatelessWidget {
  Registerpage({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
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
        padding: EdgeInsets.all(8.0),
        children: [
          const Image(
            image: AssetImage(
              'images/sr1.jpg',
            ),
          ),
          loginField(
            hint: "enter your email adress ",
            label: "email adress",
            txt: email,
          ),
          Passwordfield(
            hint: "enter the target password",
            label: "password ",
            txt: pass,
          ),
          SizedBox(
            width: 40,
            child: functionButton(
                buttonTesxt: "register your aaccount ",
                func: () async {
                  try {
                    await registerUser();
                  } on FirebaseAuthException catch (e) {
                    catchFirebaseException(e, context);
                  } catch (e) {
                    print(e);
                  }
                  printSnackBar(context, "succccccccc");
                }),
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

  void printSnackBar(BuildContext context, String S) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(S)),
    );
  }

  void catchFirebaseException(FirebaseAuthException e, BuildContext context) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
      printSnackBar(context, "weak Password");
    } else if (e.code == 'email-already-in-use') {
      printSnackBar(context, "email inuse ");
      print('The account already exists for that email.');
    }
  }

  Future<void> registerUser() async {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.text.trim(),
      password: pass.text,
    );
  }
}
