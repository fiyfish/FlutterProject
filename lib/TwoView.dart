import 'dart:ui';
import 'package:flutter/material.dart';

class twoStack extends StatefulWidget {
  @override
  _twoStackState createState() => _twoStackState();
}

class _twoStackState extends State<twoStack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            width: 200,
            top: 0,
            height: 200,
            child: Image.network(
                "http://mvimg2.meitudata.com/55fe3d94efbc12843.jpg"),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 200,
              height: 25,
              child: Text(
                "flutter代码学习",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.red,
                    fontWeight: FontWeight.w100),
              )),
          Positioned(
            left: 0,
            right: 0,
            top: 230,
            height: 50,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.lightGreen,
                    child: Text(
                      "123",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          backgroundColor: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      child: Text(
                        "123",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            backgroundColor: Colors.orange),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    flex: 1),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.cyanAccent),
                      child: Text(
                        "123",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
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