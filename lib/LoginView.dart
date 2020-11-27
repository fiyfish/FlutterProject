import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ImageIncon extends StatelessWidget {
  @override
  final String title;
  ImageIncon({Key,key,@required this.title}): super(key:key);
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
     child: Center(
       child: Container(
         decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.blue)),//decoration 蓝色的一个圆圈+那边距70的一个image
         padding: EdgeInsets.all(10),
         child:FlatButton(onPressed:(){
           Navigator.of(context).pop("自然选择号");
         },child:Text(this.title)),
       ),
     ),
    );
  }
}
