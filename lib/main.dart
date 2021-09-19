import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('magic'),
          backgroundColor: Colors.red,
        ),
        body: Ball(),
      ),
    ),
  );
}
class Ball extends StatefulWidget {
  @override
  _Ball createState() => _Ball();
}

class _Ball extends State<Ball> {
  int image = 1;


  void changeBall(){
    setState(() {

      image = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeBall();

              },
              child: Image.asset('images/ball$image.png'),
            ),
          ),
        ],
      ),
    );
  }
}





