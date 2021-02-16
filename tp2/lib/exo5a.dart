import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exo5a extends StatelessWidget {
  final String title;
  Exo5a({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 3,
          children: <Widget>[
            Container(
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const Text('Tile 1'),
              color: Colors.cyan,
            ),
            Container(
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const Text('Tile 2'),
              color: Colors.tealAccent[400],
            ),
            Container(
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const Text('Tile 3'),
              color: Colors.greenAccent[700],
            ),
            Container(
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const Text('Tile 4'),
              color: Colors.pinkAccent[700],
            ),
            Container(
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const Text('Tile 5'),
              color: Colors.purple[900],
            ),
            Container(
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const Text('Tile 6'),
              color: Colors.blue[900],
            ),
            Container(
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const Text('Tile 7'),
              color: Colors.red[900],
            ),
            Container(
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const Text('Tile 8'),
              color: Colors.tealAccent[400],
            ),
            Container(
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              child: const Text('Tile 9'),
              color: Colors.cyanAccent[700],
            ),
          ],
        )
    );
  }
}
