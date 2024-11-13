import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test'),),
        body: testScreen(),
      ),
    );
  }
}

class testScreen extends StatefulWidget {

  textState createState() => textState();
}

class textState extends State<testScreen> {
  bool? checkboxValue=true;
  String? radioValue;
  double sliderValue=5.0;
  bool switchValue=true;
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Checkbox Test'),
        Row(
          children: [
            Checkbox(value: checkboxValue, onChanged: (bool? value){
              setState(() {
                checkboxValue=value;
              });
            }),Text('checkbox value is $checkboxValue')
          ],
        ),
        Text('Radio Test'),
        Row(
          children: [
            Radio(value: 'android', groupValue: radioValue, onChanged: (String? value){
              setState(() {
                radioValue=value;
              });
            }),Text('android')
          ],
        ),
        Row(
          children: [
            Radio(value: 'ios', groupValue: radioValue, onChanged: (String? value){
              setState(() {
                radioValue=value;
              });
            }),Text('ios')
          ],
        ),
        Text('select platform is $radioValue'),
        Text('Slider Test'),
        Slider(value: sliderValue, min:0,max:10,onChanged: (double value){
          setState(() {
            sliderValue=value;
          });
        }),
        Text('slider value is $sliderValue'),
        Text('Switch Test'),
        Switch(value: switchValue, onChanged: (bool value){
          setState(() {
            switchValue=value;
          });
        }),
        Text('select value is $switchValue'),
        Text('Form Test'),
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'FirstName'),
                validator: (value){
                  if(value?.isEmpty ?? false){
                    return 'Please enter first Name';
                  }
                  return null;
                },
                onSaved: (String? value){
                  firstName=value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'LastName'),
                validator: (value){
                  if(value?.isEmpty ?? false){
                    return 'Please enter last Name';
                  }
                  return null;
                },
                onSaved: (String? value){
                  lastName=value;
                },
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: (){
            if(_formKey.currentState?.validate() ?? false){
              _formKey.currentState?.save();
              print('firstName:$firstName, lastName:$lastName');
            }
          },
          child: Text('submit'),
        )
      ],
    );
  }
}


