import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exo2b extends StatefulWidget {
  final String title;
  Exo2b({Key key, @required this.title}) : super(key: key);

  @override
  _Exo2b createState() => _Exo2b(title: this.title);
}

class _Exo2b extends State<Exo2b> {
  String title;
  _Exo2b({this.title});

  double _sliderRotateX = 0;
  double _sliderRotateZ = 0;
  bool _mirrored = false;
  double _scale = 1;
  bool _play = false;

  void animate(Timer t) {
    if (_play) {
      print(_scale);
      print(_scale >= 2);
      setState(() {
        _sliderRotateX = _sliderRotateX + 10 > 360
            ? _sliderRotateX + 10 - 360
            : _sliderRotateX + 10;
        _sliderRotateZ = _sliderRotateZ + 10 > 360
            ? _sliderRotateZ + 10 - 360
            : _sliderRotateZ + 10;
        _scale = _scale + .1 > 2 ? _scale + .1 - 3 : _scale + .1;
      });
    } else {
      t.cancel();
    }
  }

  void setupTimer() {
    _play = !_play;
    const d = const Duration(milliseconds: 50);
    new Timer.periodic(d, animate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(color: Colors.white),
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..rotateX(_sliderRotateX * pi / 180)
                ..rotateY(_mirrored ? pi : 0)
                ..rotateZ(_sliderRotateZ * pi / 180)
                ..scale(_scale),
              child: Image.network('https://picsum.photos/512'),
            ),
          ),
          Row(children: <Widget>[
            Text("Rotate X :"),
            Expanded(
              child: Slider(
                value: _sliderRotateX,
                min: 0,
                max: 360,
                label: _sliderRotateX.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderRotateX = value;
                  });
                },
              ),
            ),
          ]),
          Row(children: <Widget>[
            Text("Rotate Z :"),
            Expanded(
              child: Slider(
                value: _sliderRotateZ,
                min: 0,
                max: 360,
                label: _sliderRotateZ.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderRotateZ = value;
                  });
                },
              ),
            ),
          ]),
          Row(children: <Widget>[
            Text("Scale :"),
            Expanded(
              child: Slider(
                value: _scale,
                min: -1,
                max: 2,
                label: _scale.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _scale = value;
                  });
                },
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Expanded(
                child: Checkbox(
                  value: _mirrored,
                  onChanged: (bool value) {
                    setState(() {
                      _mirrored = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Text("Mirror"),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: setupTimer,
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow_outlined),
      ),
    );
  }
}
