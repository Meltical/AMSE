import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;

// ==============
// Models
// ==============

math.Random random = new math.Random();

class Tile {
  String title;
  Color color;

  Tile(this.title, this.color);
}

// ==============
// Widgets
// ==============

class TileWidget extends StatelessWidget {
  final Tile tile;

  TileWidget(this.tile);

  @override
  Widget build(BuildContext context) {
    return this.textBox();
  }

  Widget textBox() {
    return Container(
      color: this.tile.color,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Text(
            this.tile.title,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class Exo6b extends StatelessWidget {
  final String title;
  Exo6b({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: PositionedTiles(),
    );
  }
}

class PositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<PositionedTiles> {
  int emptyIndex, size;
  List<Widget> tiles;
  int a = 0;

  PositionedTilesState() {
    size = 4;
    emptyIndex = random.nextInt(math.pow(size, 2));
    tiles = getTiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemBuilder: (context, index) {
          return createWidgetFrom(tiles[index], index);
        },
        itemCount: tiles.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: size,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }

  Widget createWidgetFrom(TileWidget tileWidget, int index) {
    if ((index - 1 == emptyIndex && index % size == 0) ||
        (index + 1 == emptyIndex && emptyIndex % size == 0)) {
      return tileWidget;
    } else {
      if (index + 1 == emptyIndex ||
          index - 1 == emptyIndex ||
          index + size == emptyIndex ||
          index - size == emptyIndex) {
        return InkWell(
          child: Container(
            child: tileWidget,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 5,
              ),
            ),
          ),
          onTap: () => swapTiles(index),
        );
      } else {
        return tileWidget;
      }
    }
  }

  swapTiles(index) {
    setState(() {
      if (emptyIndex + 1 == index) {
        tiles.insert(emptyIndex, tiles.removeAt(emptyIndex + 1));
        emptyIndex++;
      } else if (emptyIndex - 1 == index) {
        tiles.insert(emptyIndex, tiles.removeAt(emptyIndex - 1));
        emptyIndex--;
      } else if (emptyIndex + size == index) {
        Widget tmp = tiles.removeAt(index);
        tiles.insert(index, tiles.elementAt(emptyIndex));
        tiles.removeAt(emptyIndex);
        tiles.insert(emptyIndex, tmp);
        emptyIndex += size;
      } else if (emptyIndex - size == index) {
        Widget tmp = tiles.removeAt(index);
        tiles.insert(index, tiles.elementAt(emptyIndex - 1));
        tiles.removeAt(emptyIndex);
        tiles.insert(emptyIndex, tmp);
        emptyIndex -= size;
      }
    });
  }

  getTiles() {
    return List<Widget>.generate(
        math.pow(size, 2),
        (index) => index == emptyIndex
            ? TileWidget(Tile("Empty " + index.toString(), Colors.white))
            : TileWidget(Tile("Tile " + index.toString(), Colors.grey)));
  }
}
