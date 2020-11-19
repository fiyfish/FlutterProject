import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_moduleexcise/main.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = ' 自定义主题';
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        //在这里配置整体app的一些颜色
        brightness: Brightness.light, //应用程序整体主题的颜色
        primaryColor: Colors.lightGreen[600], //App主要部分的背景色
        accentColor: Colors.orange, //前景色文本按钮等
      ),
      home: OneMyHomePage(
        title: appName,
      ),
    );
  }
}

class OneMyHomePage extends StatelessWidget {
  @override
  final String title;

  OneMyHomePage({Key key, @required this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: new Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text("eqqqqq"),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.grey),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.computer),
        ),
      ),
    );
  }
}
