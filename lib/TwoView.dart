import 'dart:ui';
import 'package:flutter/material.dart';

class twoStack extends StatefulWidget {
  @override
  _twoStackState createState() => _twoStackState();
}
/*
flutter4中布局方式
1，线性布局 row/column
2，弹性布局  expand+flex占据当前的布局的几分之几
3，流式布局 wrap+flow一般使用wrap去进行代码编写
4，叠加布局 stack+position
 */
class _twoStackState extends State<twoStack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(child: ListView(
            //padding: EdgeInsets.all(10),//内边距和
          scrollDirection: Axis.vertical,
            itemExtent: 60,
            children: List.generate(50, (index){
             return Container(
               alignment: Alignment.center,
               decoration: BoxDecoration(border: Border.all(color: Colors.red)),
               child: Text("item${index}"),
             );
            }),
          ),
            bottom: 0,
            left: 0,
            right: 0,
            top: 280,),
          Positioned(
          left: 0,
          right: 0,
          top: 280,
          height: 50,
           child: Container(
             color: Colors.red,
           ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 330,
            height: 50,
            child: Container(
              width: 220,
              child: Text("eqeqeqewqeqeqew"),
              color: Colors.yellow,),
          ),
          Positioned(
            left: 0,
            width: 200,
            top: 0,
            height: 200,
            child:Container(child: Image.network(
                "http://mvimg2.meitudata.com/55fe3d94efbc12843.jpg",fit: BoxFit.fitHeight,),
          ),),
          Positioned(
              left: 0,
              right: 0,
              top: 200,
              height: 25,
              child:Container(
                  color: Colors.yellow,
                  child:Text(
                "flutter代码学习",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.red,
                    fontWeight: FontWeight.w100),
              ))),
          Positioned(
            left: 0,
            right: 0,
            top: 225,
            height: 50,
            child: Row(
              children: <Widget>[//stack+position去实现绝对定位stack---Positioned去实现绝对定位效果
                Expanded(
                  child: Container(
                    color: Colors.lightGreen,
                    height: 50,
                    child: Text(
                      "123",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          backgroundColor: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                    child: Container(
                      height:50,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Text(
                        "123",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            backgroundColor: Colors.orange),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    flex: 1),
                Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(color: Colors.cyanAccent),
                      child: Text(
                        "123",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            backgroundColor: Colors.red),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    flex: 1),
              ],
            ),
          )
        ],
      ),
    );
  }
}
/*
Container是盒模型在盒模型里面写入布局一般的布局stack+Position确定各种控件的位置+子控件+Row+Expander+Container+自控件
 */