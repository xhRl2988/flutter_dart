import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool enabled = false;
  String stateText = "disable";

  void changeCheck(){
    if(enabled){
      enabled = false;
      stateText = "disable";
    }else{
      enabled = true;
      stateText = "enable";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless test'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon: enabled? Icon(Icons.check_box, size: 20,
              ):Icon(Icons.check_box_outline_blank,size: 20,),
                onPressed: changeCheck,
                color: Colors.red,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  '$stateText', style:TextStyle(fontSize:30, fontWeight: FontWeight.bold),
                ),
              )
             ],
          ),
        ),
      ),
    );
  }
}
