import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String longTxt="남한산 맑은 정기 뻗은 이곳에 이 땅에 어둠밝힐 영재 모였다 한 마음 한 뜻으로 굳게 뭉쳐서 진리 정의 애국의 큰 빛이 되어 온 누리에 뻗어나갈 우리의 성일 새 역사를 창조하는 겨레의 등불";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, backgroundColor: Colors.blue,
          title: Text('31103 김현수', style: TextStyle(color: Colors.white,fontSize: 30)),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.blue
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  text: 'The ',
                  style: TextStyle(color: Colors.green,fontSize: 40),
                  children: [
                    TextSpan(
                      text: 'SE',
                      style: TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red)
                    ),
                    TextSpan(
                        text: 'COND',
                        style: TextStyle(color: Colors.purple,fontSize: 40,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.dashed,decorationColor: Colors.purple)
                    ),
                    TextSpan(
                        text: ' TEST',
                        style: TextStyle(color: Colors.green,fontSize: 40,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.wavy,decorationColor: Colors.green,backgroundColor: Colors.yellow)
                    ),
                  ]
                )
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10,color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Image.asset('images/big.jpeg'),
              ),
              Text(longTxt,style: TextStyle(height: 3,fontSize: 20),maxLines:2,overflow: TextOverflow.ellipsis,),
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
              Text('Sungil Information High Scool',
                style: TextStyle(backgroundColor: Colors.cyan,color: Colors.black,height: 2,fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
