import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String longTxt="동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세.무궁화 삼천리 화려강산 대한사랑 대한으로 길이 보전하세.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Test'),
        ),
        body: Column(
          children: [
            Image.asset('images/icon1.jpg'),
            Image.asset('images/icon2.jpg'),
            Image.asset('images/sub1/icon3.jpg'),
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            Container(
              color: Colors.red,
              child: Image.asset('images/ahl.webp',
                width: 200,
                height: 100,
                fit:BoxFit.fill,),
            ),
            Text('hello world',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: Colors.red,
                height: 2,
                backgroundColor: Colors.yellow,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
              ),
            ),
            Text(longTxt,
              style: TextStyle(fontSize: 20),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text.rich(
              TextSpan(
              text: 'HE',
              style: TextStyle(fontSize: 20),
              children: [
                TextSpan(
                  text: 'L',
                  style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20,)
                ),
                TextSpan(
                  text: 'LO',
                  style:TextStyle(color: Colors.red,fontSize: 20,)
                ),
              ]
            ))
          ],
        ),
      ),
    );
  }
}

