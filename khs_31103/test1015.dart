import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {

  TextState createState()=> TextState();
}

class TextState extends State<TestScreen> {
  bool? isChecked=true;
  String? setPlatform;
  double sliderValue=5.0;
  bool switchValue=true;

  
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Checkbox Text'),
        Row(
          children: [
            Checkbox(value: isChecked, onChanged: (bool? value){setState(() {
                isChecked=value;
              });}),
            Text('checkbox value is $isChecked')
          ],
        ),
        Text('Radio Test'),
        Row(
          children: [
            Radio(value: 'android', groupValue: setPlatform, onChanged: (String? value){
              setState((){
                setPlatform=value;
              });
            }),
            Text('android')
          ],
        ),
        Row(
          children: [
            Radio(value: 'ios', groupValue: setPlatform, onChanged: (String? value){
              setState((){
                setPlatform=value;
              });
            }),
            Text('ios')
          ],
        ),
        Text('select Platform is $setPlatform'),
        Text('Slider Test'),
        Slider(value:sliderValue,min:0,max:10, onChanged:(double value){
          setState(() {
            sliderValue=value;
          });
        }),
        Text('sliderValue is $sliderValue'),
        Text('Switch Test'),
        Switch(value: switchValue, onChanged: (bool value){
          setState(() {
            switchValue=value;
          });
        }),
        Text('select value is $switchValue'),
      ],
    );
  }
}

