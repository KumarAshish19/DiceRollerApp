import "dart:math";

import "package:flutter/material.dart";

void main() {
  runApp(Diceroller());
}

class Diceroller extends StatefulWidget {
  Diceroller({super.key});

  @override
  State<Diceroller> createState() => _DicerollerState();
}

class _DicerollerState extends State<Diceroller> {

  int leftimagenumber=1;
  int rightimagenumber=1;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(onTap: (){
                    setState(() {
                    leftimagenumber = Random().nextInt(6)+1;
                    });
                  },child: Image.asset("assets/$leftimagenumber.jpg"),),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(onTap: (){
                    setState(() {
                    rightimagenumber = Random().nextInt(6)+1;
                    });
                  },child: Image.asset("assets/$rightimagenumber.jpg"),),
                ),
              ),
          ],),
        ),
      ),
    );
  }
}
