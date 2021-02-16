import 'package:flutter/material.dart';

import 'exo1.dart';
import 'exo2a.dart';
import 'exo2b.dart';
import 'exo4.dart';
import 'exo5a.dart';
import 'exo5b.dart';
import 'exo5c.dart';

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
                title: Text('Exo 2a'),
                subtitle: Text('Transformer une image'),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Exo2a(title: "Transformer une image"),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Exo 2b'),
                subtitle: Text('Transformer une image animé'),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Exo2b(title: "Transformer une image animé"),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Exo 4'),
                subtitle: Text('Affichage d une tuile'),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Exo4(title: "Affichage d une tuile"),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Exo 5a'),
                subtitle: Text('Génération du plateau de tuiles'),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Exo5a(title: "Génération du plateau de tuiles"),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Exo 5b'),
                subtitle:
                    Text('Génération du plateau de tuiles depuis une image'),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Exo5b(
                          title:
                              "Génération du plateau de tuiles depuis une image"),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Exo 5c'),
                subtitle: Text('Génération du plateau de tuiles modulable'),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Exo5c(
                          title: "Génération du plateau de tuiles modulable"),
                    ),
                  );
                },
              ),
            ),
          ],
        )));
  }
}
