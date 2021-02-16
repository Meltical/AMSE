import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tile {
  String imageURL;
  Alignment alignment;

  Tile({this.imageURL, this.alignment});

  Widget croppedImageTile(AlignmentGeometry alignmentGeometry, double factor) {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: alignmentGeometry,
            widthFactor: factor,
            heightFactor: factor,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}

Tile tile =
    new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(0, 0));

class Exo5c extends StatefulWidget {
  final String title;
  Exo5c({Key key, @required this.title}) : super(key: key);

  @override
  _Exo5c createState() => _Exo5c(title: this.title);
}

class _Exo5c extends State<Exo5c> {
  String title;
  _Exo5c({this.title});

  double _sliderValue = 3;
  double factor = 1 / 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(0),
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              crossAxisCount: _sliderValue.toInt(),
              children: createWidgetList(),
            ),
          ),
          Slider(
            value: _sliderValue,
            min: 1,
            max: 10,
            divisions: 9,
            label: _sliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }

  List<Widget> createWidgetList() {
    List<Widget> list = <Widget>[];
    double step = _sliderValue == 1 ? 1 : 2 / (_sliderValue - 1);
    factor = 1 / _sliderValue;
    for (var i = 0; i < _sliderValue; i++) {
      for (var j = 0; j < _sliderValue; j++) {
        list.add(Container(
          padding: const EdgeInsets.all(0),
          child: this.createTileWidgetFrom(
              tile, Alignment(-1 + j * step, -1 + i * step)),
        ));
      }
    }
    return (list);
  }

  Widget createTileWidgetFrom(Tile tile, AlignmentGeometry alignmentGeometry) {
    return InkWell(
      child: tile.croppedImageTile(alignmentGeometry, factor),
    );
  }
}
