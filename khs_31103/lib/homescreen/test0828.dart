import 'package:flutter/material.dart';
import 'package:khs_31103/const/Colors.dart';

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
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:
                    colors.map((e)=>Container(height: 50,width: 50,color: e,)).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.orange,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:
                    colors.map((e)=>Container(height: 50,width: 50,color: e,)).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                    )
                  ],
                )

              ]
          ),
        ),
      ),
    );
  }
}
