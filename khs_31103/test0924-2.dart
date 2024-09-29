import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('테스트',),backgroundColor: Colors.green,
        ),
        body: Stack(
          children: [
            Align(
            alignment: FractionalOffset(1.0,0.0),
              child: Container(
                width: 150,height: 150,color: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
                child: Container(
                  width: 150,height: 150, color: Colors.yellow,
                ),
              ),
            Positioned(
              left: 40,
                top: 40,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.pink,
                )
            )
          ],
        ),
      ),
    );
  }
}
