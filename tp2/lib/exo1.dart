import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exo1 extends StatelessWidget {
  final String title;
  Exo1({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Image.network('https://picsum.photos/512'),
    );
  }
}
