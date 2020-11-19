import 'package:flutter/material.dart';
class oneViewShow extends StatefulWidget {
  @override
  _oneViewShowState createState() => _oneViewShowState();
}

class _oneViewShowState extends State<oneViewShow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "row/Column",
      theme: ThemeData(),
      home: showRowView(),
    );
  }
}

class showRowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(//Colum树脂方向上的/row横行方向上的flex进行占用的百分比布局
        children: <Widget>[
          Expanded(child: Container(
            color: Colors.blue,
            padding: EdgeInsets.all(5.0),
          ),
            flex: 1,
          ),
          Expanded(child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(5.0),
          ),
            flex: 2,
          ),
          Expanded(child: Container(

            color: Colors.yellow,
            padding: EdgeInsets.all(5.0),
          ),
          flex: 1,
          ),
        ],
      ),


    );

  }
}
