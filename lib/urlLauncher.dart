import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
class urlLauncher extends StatefulWidget {
  @override
  _urlLauncherState createState() => _urlLauncherState();
}

class _urlLauncherState extends State<urlLauncher> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '使用第三方包',
      home: Scaffold(
        appBar: AppBar(title: Text('siaanf')),
        body: Center(
          child: RaisedButton(
            onPressed: (){
              const url = 'https://www.baidu.com';
              //launch(url)
              child:Text("eqewqeqeqeqw");
            },
          ),
        ),

      ),

    );
  }
}
