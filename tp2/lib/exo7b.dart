import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;

// ==============
// Models
// ==============

math.Random random = new math.Random();

String imageURL = 'https://picsum.photos/512';

double factor;

class Tile {
  int number;

  Tile(this.number);
}

// ==============
// Widgets
// ==============

class TileWidget extends StatelessWidget {
  final Tile tile;
  final AlignmentGeometry alignmentGeometry;
  final bool empty;

  TileWidget(this.tile, this.alignmentGeometry, this.empty);

  @override
  Widget build(BuildContext context) {
    return empty
        ? Container(color: Colors.white)
        : this.croppedImageTile(this.alignmentGeometry);
  }

  Widget croppedImageTile(AlignmentGeometry alignmentGeometry) {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: alignmentGeometry,
            widthFactor: factor,
            heightFactor: factor,
            child: Image.network(imageURL),
          ),
        ),
      ),
    );
  }
}

class Exo7b extends StatelessWidget {
  final String title;
  Exo7b({Key key, @required this.title}) : super(key: key);

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
  int emptyIndex, size, difficulty, moves = 0, highScore = 0, lastMoveIndex;
  List<TileWidget> tiles;
  bool playing = false, win = false;
  String floatButtonString = "15";
  List<int> possibleMoves = <int>[];
  Color colorBottomAppBar = Colors.pink[100];

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
            flex: 2,
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
          Center(
            child: Container(
              height: 50,
              width: 150,
              child: !win
                  ? null
                  : Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Gagner",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        border: Border.all(
                          color: Colors.pinkAccent,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
            ),
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 27,
                      child: Text(moves.toString()),
                      backgroundColor: Colors.pink[100],
                    ),
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange,
                    child: CircleAvatar(
                      radius: 27,
                      child: Text(highScore == 0 ? "-" : highScore.toString()),
                      backgroundColor: Colors.pink[100],
                    ),
                  ),
                ),
              ],
            ),
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
              if (!playing) {
                moves = 0;
                win = false;
                emptyIndex = getEmptyIndex();
                tiles = getTilesWithEmpty();
                shuffle();
                floatButtonString = "Reset";
                colorBottomAppBar = Colors.grey[300];
              } else {
                idleState();
              }
              playing = !playing;
            });
          },
          elevation: 2,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          color: colorBottomAppBar,
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
    int tmpIndex = emptyIndex;
    setState(() {
      if (emptyIndex + 1 == index) {
        tiles.insert(emptyIndex, tiles.removeAt(emptyIndex + 1));
        emptyIndex++;
      } else if (emptyIndex - 1 == index) {
        tiles.insert(emptyIndex, tiles.removeAt(emptyIndex - 1));
        emptyIndex--;
      } else if (emptyIndex + size == index) {
        TileWidget tmp = tiles.removeAt(index);
        tiles.insert(index, tiles.elementAt(emptyIndex));
        tiles.removeAt(emptyIndex);
        tiles.insert(emptyIndex, tmp);
        emptyIndex += size;
      } else if (emptyIndex - size == index) {
        TileWidget tmp = tiles.removeAt(index);
        tiles.insert(index, tiles.elementAt(emptyIndex - 1));
        tiles.removeAt(emptyIndex);
        tiles.insert(emptyIndex, tmp);
        emptyIndex -= size;
      }
      if (playing) {
        if (lastMoveIndex != index) moves++;
        lastMoveIndex = tmpIndex;
        if (userHasWon()) {
          win = true;
          playing = false;
          if (moves < highScore || highScore == 0) highScore = moves;
          idleState();
        }
      }
    });
    getPossibleMoves();
  }

  idleState() {
    lastMoveIndex = null;
    emptyIndex = null;
    this.possibleMoves = <int>[];
    tiles = getTiles();
    floatButtonString = difficulty.toString();
    colorBottomAppBar = Colors.pink[100];
  }

  bool userHasWon() {
    return listEquals(getTilesIndex(), getTilesInit()) ? true : false;
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
                color: index == lastMoveIndex ? Colors.blue : Colors.red,
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

  List<int> getTilesIndex() {
    return List<int>.generate(
        math.pow(size, 2), (index) => tiles.elementAt(index).tile.number);
  }

  List<int> getTilesInit() {
    return List<int>.generate(math.pow(size, 2), (index) => index);
  }

  List<TileWidget> getTilesWithEmpty() {
    List<TileWidget> list = <TileWidget>[];
    double step = size == 1 ? 1 : 2 / (size - 1);
    factor = 1 / size;
    for (var i = 0; i < size; i++) {
      for (var j = 0; j < size; j++) {
        (j + (i * size)) == emptyIndex
            ? list.add(TileWidget(Tile(j + (i * size)),
                Alignment(-1 + j * step, -1 + i * step), true))
            : list.add(TileWidget(Tile(j + (i * size)),
                Alignment(-1 + j * step, -1 + i * step), false));
      }
    }
    return list;
  }

  List<TileWidget> getTiles() {
    List<TileWidget> list = <TileWidget>[];
    double step = size == 1 ? 1 : 2 / (size - 1);
    factor = 1 / size;
    for (var i = 0; i < size; i++) {
      for (var j = 0; j < size; j++) {
        list.add(TileWidget(Tile(j + (i * size)),
            Alignment(-1 + j * step, -1 + i * step), false));
      }
    }
    return list;
  }
}
