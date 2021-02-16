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
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          crossAxisCount: 11,
          children: <Widget>[

            // ligne 1
            Container( //[1,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[1,2]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[1,3]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[1,4]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[1,5]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[1,6]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[1,7]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.black,
            ),
            Container( //[1,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[1,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[1,10]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[1,11]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            //ligne 2
            Container( //[2,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[2,2]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[2,3]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[2,4]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[2,5]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[2,6]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[2,7]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[2,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[2,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[2,10]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[2,11]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 3
            Container( //[3,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[3,2]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[3,3]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[3,4]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[3,5]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[3,6]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[3,7]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[3,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[3,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[3,10]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[3,11]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 4
            Container( //[4,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[4,2]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[4,3]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[4,4]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[4,5]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.black,
            ),
            Container( //[4,6]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.black,
            ),
            Container( //[4,7]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[4,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[4,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[4,10]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[4,11]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 5
            Container( //[5,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[5,2]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[5,3]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[5,4]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[5,5]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.black,
            ),
            Container( //[5,6]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.black,
            ),
            Container( //[5,7]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[5,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[5,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[5,10]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[5,11]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 6
            Container( //[6,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[6,2]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[6,3]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.blue[900],
            ),
            Container( //[6,4]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.red[600],
            ),
            Container( //[6,5]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[6,6]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[6,7]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[6,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[6,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[6,10]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[6,11]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 7
            Container( //[7,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[7,2]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[7,3]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[7,4]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,5]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,6]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,7]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[7,10]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[7,11]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 8
            Container( //[8,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[8,2]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[8,3]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,4]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,5]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,6]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,7]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,10]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[8,11]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 9
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 10
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne  11
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),

            // ligne 12
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),

            // ligne 13
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),

            // ligne 14
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),

            // ligne 15
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 16
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),

            // ligne 17
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[8,9]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.orange[400],
            ),
            Container( //[7,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.grey[700],
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[8,8]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
            Container( //[9,1]
              alignment : Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.cyan,
            ),
          ],
        )
    );
  }
}
