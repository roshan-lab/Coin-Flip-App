import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
              child: Text('Tap The Coin'),
          ),

          backgroundColor: Colors.teal.shade300,
        ),
        body: flipme(),
      ),
    ),
  );
}

class flipme extends StatefulWidget {
  const flipme({Key? key}) : super(key: key);

  @override
  State<flipme> createState() => _flipmeState();
}

class _flipmeState extends State<flipme> {
  int flip=1;
  void flippo()
  {
    setState((){
      flip=Random().nextInt(2)+1;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child:
              TextButton(
          onPressed: () {
            flippo();
    },
          child:Image.asset('images/$flip.png') ,
          ),
          ),
        ],
      ),

    );
  }
}
