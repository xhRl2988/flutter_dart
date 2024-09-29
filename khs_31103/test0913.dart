import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String longTxt="1243123123ㅓ12ㅓ312ㅣ3ㅚㅏㅓ3ㅣㅏㅓ2ㅗ3ㅣㅓㅏ12ㅚ3ㅏㅓ1ㅗㅓ3ㅗ12ㅣㅏㅓ3ㅘ1jjhfi7i7gxkxxxiyri5w9392ㅚ3";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text('31103 김현수', style: TextStyle(fontSize: 30,color: Colors.white),),
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
                  style: TextStyle(fontSize: 40,color: Colors.green),
                  children: [
                   TextSpan(
                     text: 'SE',
                     style: TextStyle(fontSize: 40,color: Colors.red,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red)
                   ),
                    TextSpan(
                        text: 'COND',
                        style: TextStyle(fontSize: 40,color: Colors.purple,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.dashed,decorationColor: Colors.purple)
                    ),
                    TextSpan(
                        text: ' TEST',
                        style: TextStyle(fontSize: 40,color: Colors.green,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.wavy,decorationColor: Colors.green,backgroundColor: Colors.yellow)
                    )
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
              Text(longTxt,style: TextStyle(height: 3,fontSize: 30),maxLines: 2,overflow: TextOverflow.ellipsis,),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/sungil.png'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.all(10),
                width: 100,
                height: 100,
                alignment: Alignment.bottomRight,
              ),
              Text('Sungil Information High Scool',style: TextStyle(backgroundColor: Colors.cyan,height: 2,fontSize: 20,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
