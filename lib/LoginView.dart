import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ImageIncon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Center(
       child: Container(
         decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.blue)),//decoration 蓝色的一个圆圈+那边距70的一个image
         padding: EdgeInsets.all(10),
         child: FlutterLogo(size:70,),
       ),
     ),
    );
  }
}
