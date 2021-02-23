import 'dart:html';

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
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class Exo7 extends StatelessWidget {
  final String title;
  Exo7({Key key, @required this.title}) : super(key: key);

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
  int emptyIndex, size, difficulty, moves = 0;
  List<Widget> tiles;
  bool playing = false;
  String floatButtonString = "15";
  List<int> possibleMoves = <int>[];

  PositionedTilesState() {
    size = 4;
    difficulty = 15;
    tiles = getTiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              itemBuilder: (context, index) {
                return createWidgetFrom(tiles[index], index);
              },
              primary: false,
              padding: const EdgeInsets.all(0),
              itemCount: tiles.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: size,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
            ),
          ),
          CircleAvatar(
            radius: 30,
            child: Text(moves.toString()),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          child: Text(
            floatButtonString,
          ),
          onPressed: () {
            setState(() {
              playing = !playing;
              if (playing) {
                emptyIndex = getEmptyIndex();
                tiles = getTilesWithEmpty();
                shuffle();
                floatButtonString = "Reset";
              } else {
                emptyIndex = null;
                this.possibleMoves = <int>[];
                tiles = getTiles();
                floatButtonString = difficulty.toString();
              }
            });
          },
          elevation: 2,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          color: Colors.pink[100],
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: getBottomBar(),
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }

  shuffle() {
    getPossibleMoves();
    for (var i = 0; i < difficulty; i++) {
      swapTiles(this.possibleMoves[random.nextInt(this.possibleMoves.length)]);
    }
    moves = 0;
  }

  onTap(index) {
    if (index == 0) {
      return playing ? null : changeDifficulty(-5);
    } else if (index == 1) {
      return playing ? null : changeSize(-1);
    } else if (index == 3) {
      return playing ? null : changeSize(1);
    } else if (index == 4) {
      return playing ? null : changeDifficulty(5);
    }
  }

  icon(index) {
    if (index == 0) {
      return Icon(Icons.arrow_drop_down_rounded, size: 24);
    } else if (index == 1) {
      return Icon(Icons.remove, size: 24);
    } else if (index == 3) {
      return Icon(Icons.add, size: 24);
    } else if (index == 4) {
      return Icon(Icons.arrow_drop_up_rounded, size: 24);
    }
  }

  changeDifficulty(offset) {
    if (difficulty + offset > 1)
      setState(() {
        difficulty += offset;
        floatButtonString = difficulty.toString();
      });
  }

  changeSize(offset) {
    if (size + offset > 1)
      setState(() {
        size += offset;
        tiles = getTiles();
      });
  }

  swapTiles(index) {
    setState(() {
      moves++;
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
    getPossibleMoves();
  }

  void getPossibleMoves() {
    this.possibleMoves = [];
    for (var index = 0; index < tiles.length; index++) {
      if (!(index - 1 == emptyIndex && index % size == 0) &&
          !(index + 1 == emptyIndex && emptyIndex % size == 0)) {
        if (index + 1 == emptyIndex ||
            index - 1 == emptyIndex ||
            index + size == emptyIndex ||
            index - size == emptyIndex) {
          this.possibleMoves.add(index);
        }
      }
    }
  }

  Widget createWidgetFrom(TileWidget tileWidget, int index) {
    Widget widget = tileWidget;
    if (this.possibleMoves.isNotEmpty) {
      if (this.possibleMoves.contains(index)) {
        widget = InkWell(
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
      }
    }
    return widget;
  }

  int getEmptyIndex() {
    return random.nextInt(math.pow(size, 2));
  }

  List<Widget> getBottomBar() {
    return List.generate(
      5,
      (index) => index == 2
          ? Expanded(
              child: Container(),
            )
          : Expanded(
              child: SizedBox(
                height: 50,
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () => {
                      onTap(index),
                    },
                    splashColor:
                        playing ? Colors.transparent : Colors.pinkAccent,
                    highlightColor:
                        playing ? Colors.transparent : Colors.pinkAccent,
                    child: icon(index),
                  ),
                ),
              ),
            ),
    );
  }

  List<Widget> getTilesWithEmpty() {
    return List<Widget>.generate(
        math.pow(size, 2),
        (index) => index == emptyIndex
            ? TileWidget(Tile(index.toString(), Colors.white))
            : TileWidget(Tile(index.toString(), Colors.grey)));
  }

  List<Widget> getTiles() {
    return List<Widget>.generate(math.pow(size, 2),
        (index) => TileWidget(Tile(index.toString(), Colors.grey)));
  }
}
