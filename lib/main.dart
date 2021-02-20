import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Magic(),
      ),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  var ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("Ask me Anything"),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {
              answerMe();
            },
            child: Image.asset('images/ball$ballNum.png')),
      ),
    );
  }

  void answerMe() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }
}
