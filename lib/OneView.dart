import 'package:flutter/material.dart';
class oneViewShow extends StatefulWidget {
  @override
  _oneViewShowState createState() => _oneViewShowState();
}

class _oneViewShowState extends State<oneViewShow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "wrap流式布局的使用",
      theme: ThemeData(),
      home: wrapDemon(),
    );
  }
}
class wrapDemon extends StatelessWidget {
  @override
  List<String> _list = [
    '盗墓笔记',
    '鬼吹灯',
    '这个书名是凑的',
    '藏海花',
    '这个书名是凑的',
    '藏海花',
    '沙海',
    '藏海花',
    '这个书名是凑的',
    '藏海花'
  ];
  List<Widget> _generateList() {
    return _list.map((item) => ButtonItem(text: item)).toList();
  }
  Widget build(BuildContext context) {
    return Padding(
    child:Wrap(
      children:_generateList(),
      spacing: 12,
      runSpacing: 13,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.end,
    ),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
