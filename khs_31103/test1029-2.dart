import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test'),),
        body: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {

  TextScreen createState() => TextScreen();
}

class TextScreen extends State<TestScreen> {
  _dialog(){
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Dialog Text'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    Text('수신동의'),
                  ],
                ),
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('OK'))
            ],
          );
        }
    );
  }

  _modalBottomSheet(){
    showModalBottomSheet(context: context,
        backgroundColor: Colors.yellow,
        builder: (context){
      return SafeArea(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('ADD'),
            onTap: (){
              Navigator.of(context).pop();
            },

          ),
          ListTile(
            leading: Icon(Icons.remove),
            title: Text('REMOVE'),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
        ],
      ));
        });
  }

  _bottomSheet(){
    showBottomSheet(context: context,
        backgroundColor: Colors.yellow,
        builder: (context){
          return SafeArea(child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.add),
                title: Text('ADD'),
                onTap: (){
                  Navigator.of(context).pop();
                },

              ),
              ListTile(
                leading: Icon(Icons.remove),
                title: Text('REMOVE'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: _dialog,
              child: Text('dialog')
          ),
          ElevatedButton(
              onPressed: _modalBottomSheet, child: Text('modal bottomsheet')
          ),
          ElevatedButton(onPressed: _bottomSheet, child: Text('bottomsheet'))
        ],
      ),
    );
  }
}
