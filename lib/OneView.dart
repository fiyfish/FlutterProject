import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moduleexcise/TwoView.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter_moduleexcise/LoginView.dart';
class oneViewShow extends StatefulWidget {
  @override
  _oneViewShowState createState() => _oneViewShowState();
}

class _oneViewShowState extends State<oneViewShow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "wrap流式布局的使用",
      theme: ThemeData(),
      home:SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          wrapDemon(),
          Padding(padding:EdgeInsets.only(top:5)),
          Uibutton(),
          Padding(padding:EdgeInsets.only(top:5)),
         classDemon(),
         Padding(padding:EdgeInsets.only(top:15),child:  Text("flutter",style: TextStyle(color: Colors.blue,fontSize: 20,shadows: [Shadow(color: Colors.black12,offset: Offset(3,3),blurRadius: 3)]),),),
          Padding(padding: EdgeInsets.only(top:15)),
          WrapVertaical(),
          Padding(padding: EdgeInsets.only(top:10)),
          gestureClick(),
          Padding(padding: EdgeInsets.only(top:10)),
          GestureRecognizeDemon(),
          Padding(padding: EdgeInsets.only(top:10)),
          PresentPage(),
        ],
      ),
      )
    );
  }
}
class GestureRecognizeDemon extends StatefulWidget {
  @override
  _GestureRecognizeDemonState createState() => _GestureRecognizeDemonState();
}

class _GestureRecognizeDemonState extends State<GestureRecognizeDemon> {
  var _tapGestureRecognize = TapGestureRecognizer();
  var _textColor = Colors.black;
  @override
  void initState(){super.initState();
  _tapGestureRecognize.onTapDown = (v){setState(() {
    _textColor = Colors.red;
  });};
  _tapGestureRecognize.onTapUp = (v){
    setState(() {
      _textColor = Colors.black;
    });
  };
  }
  Widget build(BuildContext context) {
    return Container(
      width:200,
      height:200,
      child: Text.rich(
      TextSpan(children: [
      TextSpan(
        text:'点中变色',
        style:TextStyle(color: _textColor),
        recognizer:_tapGestureRecognize,
      ),
      ]),
      ),
    );
  }
  //销毁创建的tapRecognise对象
 @override
  void dispose(){
    super.dispose();
    _tapGestureRecognize.dispose();
 }

}
class gestureClick extends StatefulWidget {
  @override
  _gestureClickState createState() => _gestureClickState();
}

class _gestureClickState extends State<gestureClick> {
  var wight = 100.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(//GestureDetector
      //onTap:(){print("点击操作点了你的脸眼睛nam");},//点击
      //  onDoubleTap:(){print("双手值点击");},// 双击
      //  onLongPress:(){print("长按执行的操作最终");},
       //onScaleStart:(v){print("开始缩小的时候得到结果");} ,
       // onVerticalDragDown:(v){},
       // onVerticalDragCancel:(){},
       // onVerticalDragEnd:(v){},
       // onVerticalDragUpdate:(v){},
       // onHorizontalDragStart:(v){},//向上滑动向下滑动左移动
        onVerticalDragStart:(v){
        setState(() {
          this.wight = this.wight+10.0;
        });
       },
      child: Container(width:this.wight,height:100,color: Colors.red,child:Text("上滑体积变大"),),
    );
  }
}
class ListViewDemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(//ListView.separed()
    child: ListView.separated(itemBuilder:(context,index){return Container(height:100,color: Colors.black,);} , separatorBuilder:(context,index){return Container(height: 50,alignment:Alignment.center,child:Text(index.toString()),);}, itemCount: 10),
    );
  }
}

class WrapVertaical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        direction:Axis.horizontal,
        spacing: 5,
        alignment: WrapAlignment.start,
        runSpacing:5,
        textDirection:TextDirection.ltr,
        verticalDirection:VerticalDirection.down,
        children:<Widget>[
          RaisedButton(onPressed:(){},child:Text('flutter1'),),
          RaisedButton(onPressed:(){},child:Text('flutter2'),),
          RaisedButton(onPressed:(){},child:Text('flutter3'),),
          RaisedButton(onPressed:(){},child:Text('flutter4'),),
          RaisedButton(onPressed:(){},child:Text('flutter5'),),
        ],
      ),
    );
  }
}

class classDemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Stack(
    alignment: Alignment.center,
    children: [
      CircleAvatar(child: Icon(Icons.sanitizer),radius:100,),
      Text('fluttet入门视频',style: TextStyle(color: Colors.red),),
    ],
    ),

    );
  }
}

class Uibutton extends StatefulWidget {
  @override
  _UibuttonState createState() => _UibuttonState();
}

class _UibuttonState extends State<Uibutton> {
  @override
   String textName = "";
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child:Positioned(left: 0,top: 0,width:50,height:50,
        child:FlatButton(
          onPressed:(){
            setState((){
            textName = "闹钟";//生命的无常
            });
            },
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.access_alarm),
          Padding(padding: EdgeInsets.only(left: 5)),
          Text(this.textName,style: TextStyle(fontSize:18),),
        ],
      ),),
      ),
    );
  }
}
class wrapDemon extends StatelessWidget {
  @override
  List<String> _list = [
    '盗墓笔记',
    '鬼吹灯',
    '这个书名是凑的',
    '藏海花',
    '这个书名是凑的',
    '藏海花',
    '沙海',
    '藏海花',
    '这个书名是凑的',
    '藏海花',
    '海边的曼彻斯特'
  ];
  List<Widget> _generateList() {
    return _list.map((item) => ButtonItem(text: item)).toList();
  }
  Widget build(BuildContext context) {
    return Padding(
    child:Wrap(
      children:_generateList(),
      spacing: 12,//横向的距离
      runSpacing: 13,//竖向的距离
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
    ),
      padding: EdgeInsets.fromLTRB(10,10,10,25),//左 上 右 下
    );
  }
}
class ButtonItem extends StatelessWidget {
  // ButtonItem({
  //   Key key,
  //   @required this.text,
  // }) : super(key: key);
  ButtonItem({Key key,@required this.text,}):super(key:key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      color: Theme.of(context).buttonColor,
      onPressed: () {print("12345678");},
    );
  }
}
class showRowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(10),
      child: Column(//Colum树脂方向上的/row横行方向上的flex进行占用的百分比布局
        children: <Widget>[
          Expanded(child: Container(
            color: Colors.blue,
            padding: EdgeInsets.all(5.0),
          ),
            flex: 1,
          ),
          Expanded(child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(5.0),
          ),
            flex: 2,
          ),
          Expanded(child: Container(
            color: Colors.yellow,
            padding: EdgeInsets.all(5.0),
          ),
          flex: 1,
          ),
        ],
      ),
    );

  }
}

class PresentPage extends StatefulWidget {
  PresentPage({Key key,}) : super(key: key);
  @override
  PresentPageState createState() => PresentPageState();
}

class PresentPageState extends State<PresentPage> {

  static const platform = const MethodChannel('samples.flutter.io/battery');

  String _batteryLevel = 'Unknown battery level.';

  String data = "";


  void dismiss() {
    // 直接调用原生方法
    var mapData = {"1":"2"};
    var list = ["one","two","three"];
    platform.invokeListMethod("present",list);//传递参数从flutter到ios
  }
  void fromViDeo(){
    platform.invokeMethod("fromVC");
  }
  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    Future<Void>_getNumber()async{

      String data;

      final String dataShow = await platform.invokeMethod("");

      data = dataShow;
    }
    setState(() {
      _batteryLevel = batteryLevel;
    });
  }
  @override
  Widget build(BuildContext context) {
    platform.setMethodCallHandler(handler);
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Text('Get Battery Level'),
              onPressed: _getBatteryLevel,
            ),
            Text(_batteryLevel),
            RaisedButton(onPressed:(){dismiss();},child:Text("clickMe",style:TextStyle(color: Colors.red),),),
            RaisedButton(onPressed:()async{
              var result = await
              Navigator.of(context).push(MaterialPageRoute(builder:(context){
              return ImageIncon(title:"三体人的脱水技能");
              }));
              print(result);//返回值的获取代码
              },child:Text("cliclMeShow"),),
          ],
        ),
      ),
    );
  }

  Future<dynamic> handler(MethodCall methodCall) {
    String backNative = "failure";
    if (methodCall.method == "flutterMedia") {
      print("参数：" + methodCall.arguments.toString());
      backNative = mediaCall(this.context);
    }
    print(backNative);
    // 回传原生结果
    return Future.value(backNative);
  }
  String mediaCall(BuildContext context) {
    var media = MediaQuery.of(context);
    print(media.toString());
    print("设备像素密度:" + media.devicePixelRatio.toString());
    print(media.orientation);
    print("屏幕：" + media.size.toString());
    print('状态栏高度：' + media.padding.top.toString());
    return media.padding.toString();
  }
}
/*
class CredictCardViewModel{
  final String bankName;//final 一旦在运行时开始时是没有初始值的给定初始值就不会变
  final String bankLogoUrl;
  final String cardType;
  final String cardNumnber;
  final List<Color>cardColors;
  final String validData;
  Const CredictCardViewModel({//const 定义需要一个明确的值不能像fianl那样运行时才知道是什么值一开始的时候值已经确定
  this.bankName,
  this.bankLogoUrl,
  this.cardType,
  this.cardNumnber,
  this.cardColors,
  this.ValidData,
});
  void printName(){
    print("eqeqweqeqeqeqweq")
  }
}
*/
/*
class CreditCard extends StatelessWidget {
  final CreditCardViewModel data;
  CreditCard({key ky,this.data}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height:180,
      margin:EdgeInsets.fromLTRB(16,16,16,0),//外边距 上 左 右 下部分
      padding:EdgeInsets.only(left:20,top:20),//内边距 上 左 右 下部分
      decoration:BoxDecoration(
       gredient:LinearGradient(
         begin:Alignment.topLeft,
         end:Alignment.bottomRight,
         colors:this.data.cardColors,
       ),
       borderRadius:BorderRadius.circular(8),
       boxShadow:[
         BoxShadow(
         blurRadius:6,//阴影扩散程度
         offset:Offset(0.0,15.0),//阴影xy轴偏移量
         spreadRadius:4,//阴影扩散程度
         color:Color.fromARGB(20,0,0,0),
         ),
       ] ,
      ),
    child:Stack(
      children:<Widget>[//Container+stack+positioned+
       Positioned(
         right:-100,
         Bottom:-100,//right<---->bottom右边和底部的距离差为100
         child:Image.asset(this.data.bankLogoUrl,width:250,height:250,color:Colors.red,),
    ) ,
   Positioned(left:0,top:0,right:0,bottom:0,child:Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children:<Widget>[
      Row(
     children:<Widget>[
       radius:25,
       backgroundColor:Colors.white,
       child:Image.assert(
       this.data.bankLogoUrl,
       width:36,
       height:36,
       fix:BoxFit.scaleDown,//fix:Box.scaleDown
    ),
    )
    padding(padding:Edgeinsets.only(left:15)),
    column(crossAxisAlignment:CrossAxistAligment.start,
    children:<Widget>{
    Text(
    this.data.bankName,
    style:TextStyle(
    fontSize:19,
    fontWeight:FontWeight.bold,
    color:Colors.White,
    ),
    ),
    Text(
    this.data.cardType,
    style:TextStyle(
    fontSize:14,
    color:color.fromARGB(200,25,255,255),
    ),
    ),
    },
    ),
     Padding(padding:EdgeInsets.only(left:65,top:20)),
     child:Text(
     this.data.TextStyle(fontSize:16,fontFamily:'farrington',letterSpacing:3,color:Colors.white,)
    ),
    Padding(Padding:EdgeInsets.only(left:65,top:15),child:Text(this.data.validData,Style:TestStyle(fontSize:13,color:Colors.white,)
    )
    ],
    ],
    ),
    ],
    ),),
      ],
    ),
    );
  }
}
*/
