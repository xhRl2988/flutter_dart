import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {

  TextState createState() => TextState();
}

class TextState extends State<TestScreen> {
  final controller = TextEditingController();
  final controller_name = TextEditingController();
  int textCounter=0;

  _printValue(){
    print("_printValue(): ${controller.text}");
    setState((){
      textCounter = controller.text.length;
    });
  }

  void initState(){
    super.initState();
    controller.addListener(_printValue);
  }
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context){
    print("build....");
    return Column(
      children: [
        Text('TextField Test'),
        TextField(
          style: TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: Icon(Icons.input),
            border: OutlineInputBorder(),
            hintText: 'Hint Text',
            helperText: '데이터를 입력하세요.',
            counterText: "$textCounter characters",
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.emailAddress,
          minLines: 5,
          maxLines: 5,
        ),
      ],
    );
  }
}

