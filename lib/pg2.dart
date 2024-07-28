import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String? data;

class Pg2 extends StatefulWidget {
  const Pg2({super.key, required data});

  @override
  State<Pg2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Pg2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Text(
        data ?? "not found man",
        style: TextStyle(fontSize: 40),
      ),
    ));
  }
}
