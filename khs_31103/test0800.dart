import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.orange,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/img/logo.png',
              ),
              CircularProgressIndicator(
                color: Colors.white,
              )
            ],
          ),
        ),
      )
  );
}