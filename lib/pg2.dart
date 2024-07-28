import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pg2 extends StatefulWidget {
  late String email;
  late String pass;

  Pg2({super.key, required this.email, required this.pass});

  @override
  State<Pg2> createState() => _MyWidgetState();
}

List<String> region = [
  "images/bc.png",
  "images/dm.png",
  "images/fy.png",
  "images/io.png",
  "images/nx.png",
  "images/pw.png",
  "images/pz.png",
  "images/shur.png",
  "images/si.png",
  "images/tg.png"
];

class _MyWidgetState extends State<Pg2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 28, 35),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 18, 28, 35),
            width: 400,
            alignment: Alignment.center,
            child: const Text(
              "chosse you're region Summoner",
              style: TextStyle(
                  fontSize: 25,
                  backgroundColor: Color.fromARGB(255, 18, 28, 35),
                  color: Colors.white),
            ),
          ),
          Container(
            height: 100,
            color: const Color.fromARGB(255, 18, 28, 35),
            child: ListView.builder(
                itemCount: region.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      foregroundImage: AssetImage(region[i]),
                      radius: 52,
                      backgroundColor: const Color.fromARGB(255, 18, 28, 35),
                      // foregroundColor: Color.fromARGB(255, 18, 28, 35),
                    ),
                  );
                }),
          ),
          Container(
            height: 630,
            color: const Color.fromARGB(255, 18, 28, 35),
            child: GridView.builder(
                itemCount: region.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, i) {
                  return Container(
                    height: 50,
                    width: 40,
                    // alignment: Alignment.center,
                    child: CircleAvatar(
                      foregroundImage: AssetImage(region[i]),
                      radius: 52,
                      backgroundColor: const Color.fromARGB(255, 18, 28, 35),
                      // foregroundColor: Color.fromARGB(255, 18, 28, 35),
                    ),
                  );
                }),
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 28, 35),
        title: Text("welcome ${widget.email} "),
      ),
    ));
  }
}
