import 'package:flutter/material.dart';
import 'package:flutter_moduleexcise/TwoView.dart';
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          wrapDemon(),
          Padding(padding:EdgeInsets.only(top:5)),
          Uibutton(),
         Padding(padding:EdgeInsets.only(top:15),child:  Text("flutter",style: TextStyle(color: Colors.blue,fontSize: 20,shadows: [Shadow(color: Colors.black12,offset: Offset(3,3),blurRadius: 3)]),),),
        ],
      ),
      )
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
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(10,10,10,500),
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
