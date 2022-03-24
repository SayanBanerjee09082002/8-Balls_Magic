import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: func()));
}

class func extends StatefulWidget {
  @override
  _func createState() => _func();
}

class _func extends State<func> {
  int n = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('8 BALLS MAGIC'),
          backgroundColor: Color.fromARGB(255, 80, 23, 12),
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'lib/images/HD-wallpaper-fiery-abstract-burning-background-fire-design-abstract-fire-flaming-background-abstract-hot-burning-flaming-frame-bg-burning-abstract.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          ),
          Center(
              child: SizedBox(
                  child: FlatButton(
            onPressed: () {
              setState(() {
                n = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('lib/images/ball$n.png'),
          ))),
        ]));
  }
}
