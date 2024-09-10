import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children:[
              Flexible(
                fit:FlexFit.tight,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              )
              ]
          ),
        ),
      ),
    );
  }
}
