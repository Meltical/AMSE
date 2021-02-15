import 'package:flutter/material.dart';
import 'package:tp2/exo5.dart';

import 'exo1.dart';
import 'exo2a.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Exo 1'),
                subtitle: Text('Afficher une image'),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Exo1(title: "Afficher une image"),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Exo 2'),
                subtitle: Text('Transformer une image'),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Exo2(title: "Transformer une image"),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Exo 5'),
                subtitle: Text('Transformer une image'),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Exo5(title: "Transformer une image"),
                    ),
                  );
                },
              ),
            ),
          ],
        )));
  }
}
