import 'package:flutter/material.dart';
class ThreeView extends StatefulWidget {
  @override
  _ThreeViewState createState() => _ThreeViewState();
}
//通过stack和positon去设置元素的坐标位置然后在坐标位置里面去添加设置用的元素最后去进行相关属性的设置并最终实现我们想要的代码实现结果
class _ThreeViewState extends State<ThreeView> {
  _print(){
    print("1111111");
  }
  _twoClick(){
    print("twoBlockShow");
  }
_twtrrClick(){
    print("threeClickShow");
}
@override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
      children: [
        Positioned
          (child: FlatButton(
          color: Colors.red,
          onPressed:_print,
          highlightColor: Colors.transparent, // 透明色
          splashColor: Colors.transparent, // 透明色
        ),
          left: 0,
          top: 0,
          width: 120,
          height: 110,
        ),
        Positioned(child: RaisedButton(//比较特殊需要额外设置边角和凸起的阴影
          color: Colors.black,
         onPressed: _twoClick,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          highlightElevation: 0, // 控制按钮下方阴影的大小，默认值为 8
          elevation: 0, // 凸起按钮下方阴影的大小，默认值为 2
        ),
        left: 0,
        top: 110,
        width: 120,
        height:110,
        ),
        Positioned(child: OutlineButton(
          color: Colors.purple,
          onPressed: _twtrrClick,
          highlightColor: Colors.transparent, // 透明色
          splashColor: Colors.transparent, // 透明色
        ),
          left: 0,
          top: 220,
          width: 120,
          height:110,
        ),
      ],
      ),

    );
  }
}
