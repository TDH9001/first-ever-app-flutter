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
  "images/dm.png",
  "images/fy.png",
  "images/io.png",
  "images/nx.png",
  "images/pw.png",
  "images/pz.png",
  "images/shur.png",
  "images/si.png",
  "images/tg.png",
  "images/bc.png"
];
List<String> champ = [
  "champs/garen.png",
  "champs/voli.png",
  "champs/yasuo.png",
  "champs/darius.png",
  "champs/pyke.png",
  "champs/zeri.png",
  "champs/azir.png",
  "champs/viego.png",
  "champs/aphilios.png",
  "champs/ziggs.png"
];

class _MyWidgetState extends State<Pg2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 18, 28, 35),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                  color: Color.fromARGB(255, 102, 237, 199)),
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
            color: const Color.fromARGB(255, 18, 28, 35),
            width: 400,
            alignment: Alignment.center,
            child: const Text(
              "Chose your champion Summoner",
              style: TextStyle(
                  fontSize: 25,
                  backgroundColor: Color.fromARGB(255, 18, 28, 35),
                  color: Color.fromARGB(255, 102, 237, 199)),
            ),
          ),
          Container(
            height: 510,
            color: const Color.fromARGB(255, 18, 28, 35),
            child: GridView.builder(
                itemCount: region.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, i) {
                  return Image(
                    image: AssetImage(champ[i]),
                  );
                }),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 32, 88, 108),
                foregroundColor: const Color.fromARGB(255, 159, 210, 196)),
            child: const Text("Find a Match"),
          )
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 18, 28, 35),
        title: Text(
          "welcome ${widget.email} ",
          style:
              const TextStyle(color: const Color.fromARGB(255, 159, 210, 196)),
        ),
      ),
    ));
  }
}
