import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

bool _isObsec = true;
void main() {
  runApp(FormApp());
}

class FormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter your summoner adress",
                      labelText: "Summoner adress",
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.email_sharp)),
                )),
            Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Summoner password",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          SetState() {
                            _isObsec = !_isObsec;
                          }
                        },
                        child: Icon(
                            _isObsec ? Icons.visibility : Icons.visibility_off),
                      ),
                      border: const OutlineInputBorder(),
                      icon: const Icon(Icons.lock_sharp)),
                  obscureText: _isObsec,
                  obscuringCharacter: "*",
                  textAlignVertical: TextAlignVertical.center,
                )),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black87),
              child: const Text("Jump Into Action Summoner"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                    onPressed: () {
                      _isObsec;
                    },
                    child: const Text("Forgot Password?")),
                TextButton(
                    onPressed: () {}, child: const Text("become a Summoner!")),
              ],
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text("welcome summoner"),
          centerTitle: true,
        ),
      ),
    );
  }
}
