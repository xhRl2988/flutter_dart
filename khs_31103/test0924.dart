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
          title: Text('테스트'),
        ),
        body: Stack(
          children: [
            Container(color: Colors.red,),
            Align(
         // alignment: Alignment(0.0,0.0),    Alignment는 가운데를 기준점으로  FractionalOffset는 왼쪽 위 꼭짓점을 기준으로
            alignment: FractionalOffset(0.5,0.5),
              child: Container(
                width: 300,height: 300,color: Colors.green,
                child: Align(
                  alignment: Alignment(0, 1),
                  child: Container(
                    width: 50,height: 50,color: Colors.blue,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 150,height: 150,color: Colors.yellow,
              ),
            ),
            Positioned(right:40,top:40,child: Container(color: Colors.white,height: 150,width: 150,))

          ],
        ),
      ),
    );
  }
}
