import 'package:flutter/material.dart';
import 'dart:async';
class NavigationIconView {

  NavigationIconView({
    Widget icon,
    Widget title,
    TickerProvider vsync
  }):
        item = new BottomNavigationBarItem(
          icon: icon,
          title: title,
        ),
        controller = new AnimationController(
            duration: kThemeAnimationDuration,
            vsync: vsync
        );

  final BottomNavigationBarItem item;
  final AnimationController controller;
}
class GlobalConfig {
  static bool dark = true;
  static ThemeData themeData = new ThemeData.dark();
  static Color searchBackgroundColor = Colors.white10;
  static Color cardBackgroundColor = new Color(0xFF222222);
  static Color fontColor = Colors.white30;
}
class DeMonWidget extends StatelessWidget {//无状态控件
  final String text;

  DeMonWidget(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Text(text ?? "这就无状态DEMO"),
    );
  }
}
class DemonFul extends StatefulWidget {
  final String text;
  DemonFul(this.text);
  @override
  _DemonFulState createState() => _DemonFulState(text);

}
class _DemonFulState extends State<DemonFul>{
  String text;
  _DemonFulState(this.text);
  @override
  void initState(){}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 500,
      height: 500,
      child: Text(text ??"这就是demon"),
      color:Colors.white,
    );
  }

}













