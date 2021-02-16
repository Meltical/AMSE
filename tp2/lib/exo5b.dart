import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tile {
  String imageURL;
  Alignment alignment;

  Tile({this.imageURL, this.alignment});

Widget croppedImageTile(AlignmentGeometry alignmentGeometry) {
  return FittedBox(
    fit: BoxFit.fill,
    child: ClipRect(
      child: Container(
        child: Align(
          alignment: alignmentGeometry,
          widthFactor: 0.3,
          heightFactor: 0.3,
          child: Image.network(this.imageURL),
        ),
      ),
    ),
  );
}
}

Tile tile = new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(0, 0));

class Exo5b extends StatelessWidget {
  final String title;
  Exo5b({Key key, @required this.title}) : super(key: key);

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
            padding: const EdgeInsets.all(8),
            child: this.createTileWidgetFrom(tile, Alignment.topLeft),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: this.createTileWidgetFrom(tile, Alignment.topCenter),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: this.createTileWidgetFrom(tile, Alignment.topRight),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: this.createTileWidgetFrom(tile, Alignment.centerLeft),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: this.createTileWidgetFrom(tile, Alignment.center),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: this.createTileWidgetFrom(tile, Alignment.centerRight),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: this.createTileWidgetFrom(tile, Alignment.bottomLeft),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: this.createTileWidgetFrom(tile, Alignment.bottomCenter),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: this.createTileWidgetFrom(tile, Alignment.bottomRight),
          ),
        ],
      )
    );
  }
  Widget createTileWidgetFrom(Tile tile, AlignmentGeometry alignmentGeometry) {
    return InkWell(
      child: tile.croppedImageTile(alignmentGeometry),
    );
  }
}
