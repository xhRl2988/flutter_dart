import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> citys=['서울시','성남시','울산시','부산시','인천시','천안시','제주시','춘천시','광주시'];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test'),),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index){
              return Card(
                child: Column(
                  children: [
                    Text(citys[index]),
                    Image.asset('images/big.jpeg'),
                  ],
                ),
              );
            },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
