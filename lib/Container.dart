import 'package:flutter/material.dart';
class showContaimerView extends StatelessWidget {//containerView相当于ios中的Uiview
  @override
  Widget build(BuildContext context) {
    return Container(
       width: 200.0,
       height: 200.0,
       decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.grey,width: 8.0),borderRadius: const BorderRadius.all(const Radius.circular(8.0))),
       child: Text('text',textAlign: TextAlign.center,style: TextStyle(fontSize: 28.0),),//text相当于ioslable textAlign//style：相当于
    );
  }
}
/*
Text（"饿去eqeq"）//TextAlign////////Style在这里去写Text的字体对其方式以及Text的Style
Container容器相当于ios的uiview Decoration修饰背景颜色边框以及边框的款高以及不同的背景幅度圆角等等
 */