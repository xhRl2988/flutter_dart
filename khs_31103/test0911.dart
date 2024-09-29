import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String longTxt='남한산 맑은 정기 뻗은 이곳에 이 땅에 어둠밝힐 영재모였다 한 마음 한 뜻으로 굳게 뭉쳐서 진리 정의 애국의 큰 빛이 되어 온 누리에 뻗어나갈 우리의 성일 새 역사를 창조하는 겨레의 등불';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('31103 김현수', style: TextStyle(color: Colors.white,fontSize: 30),),
        ),
        body: Container(
          height: Size.infinite.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.blue
              ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  text: 'The ',
                  style: TextStyle(fontSize: 40, color: Colors.green),
                  children: [
                    TextSpan(
                      text: 'SE',
                      style: TextStyle(fontSize: 40, color: Colors.red,fontWeight: FontWeight.bold, decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red),
                    ),
                    TextSpan(
                      text: 'CONCE',
                      style: TextStyle(fontSize: 40,color: Colors.purple,fontStyle: FontStyle.italic, decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dashed,decorationColor: Colors.purple)
                    ),
                    TextSpan(
                      text: ' TEST',
                      style: TextStyle(fontSize: 40, color: Colors.green,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.wavy,decorationColor: Colors.green, backgroundColor: Colors.yellow)
                    )
                  ]
                )
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Image.asset('images/big.jpeg'),
              ),
              Text(
                longTxt,
                style: TextStyle(fontSize: 20,height: 3),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/sungil.png'),
                    fit: BoxFit.cover
                  )
                ),
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.bottomRight,
              ),
              Text('Sungil Information High School', style: TextStyle(height: 2,fontSize: 20,backgroundColor: Colors.cyan, color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}


