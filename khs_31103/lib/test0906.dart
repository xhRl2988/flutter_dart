import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String longTxt="남한산 맑은 정기 뻗은 이곳에 이 땅에 어둠밝힐영재모였다 한 마음 한 뜻으로 굳게 뭉쳐서 진리 정의 애국의 큰 빛이 되어 온 누리에 뻗어나갈 우리의 성일 새 역사를 창조하는 겨레의 등불 ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("성일 정보고등학교",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset('images/sungil.png'),
            Text('Sungil Information High School',
              style: TextStyle(
                height: 2,
                backgroundColor: Colors.blue,
                color: Colors.white
              ),
            ),
            Text(longTxt,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 3, fontSize: 20),
            ),
            Text.rich(
              TextSpan(
                text: 'The ',
                style: TextStyle(fontSize:40,color: Colors.green),
                children: [
                  TextSpan(
                    text: 'E',
                    style: TextStyle(fontSize:40, fontWeight: FontWeight.bold,color: Colors.red)
                  ),
                  TextSpan(
                      text: 'N',
                      style: TextStyle(fontStyle: FontStyle.italic,color: Colors.purple)
                  ),
                  TextSpan(
                      text: 'D',
                      style: TextStyle(decoration: TextDecoration.underline,
                          decorationColor: Colors.red,
                          decorationStyle: TextDecorationStyle.wavy,
                          backgroundColor: Colors.yellow)
                  ),
                ]
              ),style: TextStyle(fontSize: 20),
            ),
            Image(
              image:NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),width: 200,height: 100,
            ),
            Container(
              color: Colors.cyan,
              child: Image.asset(
                'images/ahl.webp',
                width: 300,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
