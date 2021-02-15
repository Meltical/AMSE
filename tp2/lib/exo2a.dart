import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exo2 extends StatelessWidget {
  final String title;
  Exo2({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(color: Colors.white),
            child: Image.network('https://picsum.photos/512'),
          ),
        ],
      ),
    );
  }
}
