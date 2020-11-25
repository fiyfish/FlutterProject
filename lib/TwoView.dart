import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_moduleexcise/Container.dart';
import 'package:flutter/cupertino.dart';

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
      child: Scaffold(
        appBar: AppBar(title: Text("demon"),),
        drawer: Drawer(
        child: ListView(
        children: <Widget>[
          DrawerHeader(child:Icon(Icons.print)),
          ListTile(title: Text('你的'),),
          ListTile(title: Text('我的'),),
          ListTile(title: Text('大家的'),),
        ],
        ),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CupertinoActivityIndicator(radius:15,),
            cupertionAlertDialogDemon(),
            Padding(padding: EdgeInsets.only(top:5),),
            iosButton(),
            slider(),
            switchclik()
          ],
        ))
    );
  }
}
class switchclik extends StatefulWidget {
  @override
  _switchclikState createState() => _switchclikState();
}

class _switchclikState extends State<switchclik> {
  @override
  bool _value = true;
  Widget build(BuildContext context) {
    return Container(
      child:CupertinoSwitch(
    value: _value,
    onChanged:(bool v) {
      setState(() {
      _value = v;
      });
    },
     activeColor:Colors.red,
      ) ,
    );
  }
}




class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}
class _sliderState extends State<slider> {
  @override
  double _value = 1.0;
  Widget build(BuildContext context) {
    return Container(
    child: CupertinoSlider(value: _value,onChanged:(double v){
    setState(() {
      print("$v");
      _value = v;
    });
    },
    onChangeEnd:(double page){print("已经结束了");},
    onChangeStart:(double page){print("刚刚开始了");},
    min: 1.0,
    max: 10.0,
    divisions: 5,
    activeColor: Colors.red,
    ),
    );
  }
}
class iosButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(child: Text("name"),),
      color: Colors.blue,
    );
  }
}

class cupertionAlertDialogDemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
          title: Text("删除提示"),
          content: Text('确定要删除吗?' ),
          actions: [
           FlatButton(onPressed:(){}, child:Text("确定"),),
           FlatButton(onPressed:(){}, child: Text("取消")),
            FlatButton(onPressed:(){}, child: Text("在考虑一下")),
            FlatButton(onPressed:(){}, child: Text("我考虑好了")),
          ],
        );
  }
}
/*
Container是盒模型在盒模型里面写入布局一般的布局stack+Position确定各种控件的位置+子控件+Row+Expander+Container+自控件
 */