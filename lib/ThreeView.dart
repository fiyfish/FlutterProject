import 'package:flutter/material.dart';
class twoView extends StatefulWidget {
  @override
  _twoViewState createState() => _twoViewState();
}

class _twoViewState extends State<twoView> {
  @override
  Widget build(BuildContext context) {
    return SnapDemo();
  }
}

class SnapDemo extends StatelessWidget {
  String title = "测试";
  SnapDemo({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            expandedHeight: 250,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("nameShowAgain"),
              background: Image.network(
                'http://img1.mukewang.com/5c18cf540001ac8206000338.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final isOdd = index % 2 == 1;
                return Container(
                  alignment: Alignment.center,
                  color: isOdd ? Colors.white : Color(0xFFEAEAEA),
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                );
              },
              childCount: 50,
            ),
            itemExtent: 80,
          ),
        ],
      ),
    );
  }
}
