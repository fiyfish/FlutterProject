import 'dart:ui';
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
//加载图片imageView BoxFit.fill/BoxFit.Contain/BoxFit.cover/BoxFit.fitWidth/repeat/alignment/centerSlice/matchTextDirection/gaplessPlayback
class ImagePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network("https://flutter.io/images/flutter-mark-squre-100.png",fit:BoxFit.fitHeight),
    );
  }
}
//text相当于之前的lable显示控件展示
class TextShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('文本组件'),),
      body: Column(
        children: <Widget>[
        Text("eqeqweqeqeqeqe",
           maxLines: 0,
           textAlign: TextAlign.left,
           style: TextStyle(
          color: const Color(0Xfff0000),
          decoration: TextDecoration.lineThrough,
          fontSize: 25.0,
          fontStyle: FontStyle.italic,
        ),)
        ],
      ),
    );
  }
}
class iconShowView extends StatefulWidget {
  @override
  _iconShowViewState createState() => _iconShowViewState();
}
/*
系统图标不可以进行交互设计一般icon里面设计的都是系统的图标展示
 */
class _iconShowViewState extends State<iconShowView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(Icons.padding,color: Colors.grey,size: 80.0,),
    );
  }
}
/*
button分为以下几类 iconButton/raisebutton类别
 */
class showContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.computer),
        tooltip: "按下操作",
        onPressed: (){},

      ),
    );
  }
}
class showButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
      onPressed: (){print("12334455");},
      child: Text("设置代码展示数据结构"),  
      ),
    );
  }
}
/*
Text（"饿去eqeq"）//TextAlign////////Style在这里去写Text的字体对其方式以及Text的Style
Container容器相当于ios的uiview Decoration修饰背景颜色边框以及边框的款高以及不同的背景幅度圆角
*/