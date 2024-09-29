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


class TestScreen extends StatefulWidget{
  TextState createState()=>TextState();
}

class TextState extends State<TestScreen>{
  final controller = TextEditingController();
  int textCounter=0;
  printValue(){
    print('printValue(): ${controller.text}');
    setState(() {
      textCounter=controller.text.length;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(printValue);
  }
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  
  Widget build(BuildContext context){
    return Column(
      children: [
        Text('TextField Test'),
        TextField(style: TextStyle(fontSize: 15),controller: controller,
        decoration: InputDecoration(
          labelText: 'Data',
          prefixIcon: Icon(Icons.input),
          border: OutlineInputBorder(),
          hintText: 'Data',
          helperText: '데이터를 입력하세요.',
          counterText: '$textCounter characters',
        ),
          textInputAction: TextInputAction.search,
          maxLines: 5,
        )
      ],
    );
  }
}

