import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "pg2.dart";

bool _isObsec = true;
void main() {
  runApp(ProviderScope(child: FormApp()));
}

// link for youtube video that this idea for sttateamngement came from
// https://www.youtube.com/watch?v=vU9xDLdEZtU
// youtube playlist where i learned these : https://www.youtube.com/playlist?list=PL4cUxeGkcC9i88WGZ9eIfQUWRgPstLFLp

//makign a provider
const bool _isVis = true;
final eyeProvider = Provider((ref) {
  return _isVis;
});
var emailText = TextEditingController();
var pass = TextEditingController();

class FormApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eyeState = ref.watch(eyeProvider);
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
                  controller: emailText,
                  decoration: const InputDecoration(
                      hintText: "Enter your summoner adress",
                      labelText: "Summoner adress",
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.email_sharp)),
                )),
            Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextFormField(
                  //email
                  controller: pass,
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
                  obscureText: eyeState,
                  obscuringCharacter: "*",
                  textAlignVertical: TextAlignVertical.center,
                )),
            Builder(builder: (context) {
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
            }),
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
// this is bad
