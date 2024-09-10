import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: HomeScreen()
      )
  );
}

class HomeScreen extends StatelessWidget{
  bool enabled = false;


  void changeCheck(){

    if(enabled){
      enabled = false;
    }else{
      enabled = true;

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFF99231),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'asset/img/logo.png',
          ),
          CircularProgressIndicator(
            color: Colors.white,
          ),
          IconButton(icon: enabled? Icon(Icons.check_box, size: 20,
          ):Icon(Icons.check_box_outline_blank,size: 20,),
            onPressed: changeCheck,
            color: Colors.red,
          ),
        ],
      ),
    );

  }


}