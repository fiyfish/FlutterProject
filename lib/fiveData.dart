import 'dart:ffi';

import 'package:flutter/material.dart';//geogle开源的一种安卓开发平台的框架ios是扁平化的开眼框架的ui体系
import 'package:flutter/services.dart';
class fiveData extends StatefulWidget {
  @override
  _fiveDataState createState() => _fiveDataState();
}

class _fiveDataState extends State<fiveData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("flutte入门"),),
      body:Container(
        child: Text("body"),
        alignment: Alignment.center,
      ),
      drawer: Drawer(
       child: ListView(
         children: <Widget>[
           DrawerHeader(child: Text('头像')),
           ListTile(title: Text("我的"),),
           ListTile(title: Text("关于"),),
           ListTile(title: Text("主页"),),
         ],
       ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text('头像')),
            ListTile(title: Text("我的"),),
            ListTile(title: Text("关于"),),
            ListTile(title: Text("主页"),),
          ],
        ),
      ),
 floatingActionButton: FloatingActionButton(onPressed: (){},child: Text("+"),),
 floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
 floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
 persistentFooterButtons:List.generate(3, (index){
   return RaisedButton(onPressed:(){},child: Text("persistent"),textColor: Colors.black,);
 }),
bottomNavigationBar: Row(children: [
  Expanded(child: RaisedButton(onPressed: (){},child: Text("微信"),),flex: 1,),
  Expanded(child: RaisedButton(onPressed: (){},child: Text("通讯录"),),flex: 1,),
  Expanded(child: RaisedButton(onPressed: (){},child: Text("发现"),),flex: 1,),
  Expanded(child: RaisedButton(onPressed: (){},child: Text("我"),),flex: 1,),
],),
   bottomSheet: RaisedButton(onPressed: (){},child: Text('bottomSheeet'),),
    );
  }
}
class twoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //softWare自动换行
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
        SizedBox(height:10,),
        Text("flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦",softWrap: true,),
       SizedBox(height:10,),
          Text("flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦",softWrap: false,),
          SizedBox(height:10,),//直接截取
          Text("flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutter 实战入门Flutter实战如梦flutterter实战如梦flutter 实战入门Flutter实战如梦",softWrap: false,overflow: TextOverflow.clip,),
          Container(
          width: 150,
          color: Colors.black12,
          child: Text('Flutter实战入门截取方式直接截取',overflow: TextOverflow.clip,softWrap: false,),//截断显示
          ),
          SizedBox(height:10,),
          Container(
            width: 150,
            color: Colors.black12,
            child: Text('Flutter实战入门截取方式直接渐隐',overflow: TextOverflow.fade,softWrap: false,),//fade褪色显示
          ),
         SizedBox(height:10,),
          Container(
            width: 150,
            color: Colors.black12,
            child: Text('Flutter实战入门截取方式显示',overflow: TextOverflow.ellipsis,softWrap: false,),//ellipsis...显示
          ),
       Text.rich(//Text换行显示如上述所示 Text.rich然后是TextSpan(text:"")
         TextSpan(text: "当前你所看的书是<<",style: TextStyle(color: Colors.black),children:<InlineSpan>[
           TextSpan(text: "Flutter实战入门",style: TextStyle(color: Colors.red)),
           TextSpan(text: ">>",style: TextStyle(color: Colors.yellow)),
           TextSpan(text:".",style: TextStyle(color: Colors.purple,fontSize:35,)),//就是这样 Text.rich(TextSpan(text:"",style(color)))
         ],),
       ),
      SizedBox(height:10,),
      TextField(decoration: InputDecoration(filled: true,border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
      textAlign: TextAlign.center,
      inputFormatters: [
        WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
      ],
      ),
      Padding(padding: EdgeInsets.fromLTRB(25,5,25,0),child: TextField(decoration: InputDecoration(labelText: "请输入密码"),obscureText: true,textAlign:TextAlign.center,),),
      Image.network("",width:20,height:20,),//一般Image在加载图片内部需要去添加宽高去对应图片的狂高去显示效果
      Image.asset("",width:40,height: 50,),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        RaisedButton(onPressed: (){print("raiseButton");},child: Text("RaisedButton"),),
        FlatButton(onPressed: (){}, child:Text("flatButton")),
        OutlineButton(onPressed:(){},child: Text('OutLineBUtton'),),
      ],),
      RaisedButton.icon(onPressed: (){},icon: Icon(Icons.opacity),label:Text('水滴毁灭了人类的全部舰队') ,),
      FlatButton.icon(onPressed:(){},icon:Icon(Icons.ac_unit),label:Text('雪地工程') ,),
      OutlineButton.icon(onPressed: (){},icon:Icon(Icons.access_alarm_outlined),label: Text('摇篮系统'),) ,
      Container(
        width: 200,
        height: 100,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left:10,top: 10),//padding内边距 margain 外边距离
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red,width: 1,style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Text("自控件"),
        alignment: AlignmentDirectional.center,
      ),
      Padding(padding: EdgeInsets.only(top: 10)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//两边的距离相等
        children: <Widget>[
        Container(
          width:50,
          height: 30,
          decoration: BoxDecoration(border:Border.all(color: Colors.red,width: 1,style: BorderStyle.solid)),
          child: Text("1"),
          alignment: AlignmentDirectional.topStart,
        ),
          Container(
            width:50,
            height: 30,
            decoration: BoxDecoration(border:Border.all(color: Colors.blue,width: 1,style: BorderStyle.solid)),
            child: Text("2"),
            alignment: AlignmentDirectional.center,
          ),
          Container(
            width:50,
            height: 30,
            decoration: BoxDecoration(border:Border.all(color: Colors.blue,width: 1,style: BorderStyle.solid)),
            child: Text("3"),
            alignment: AlignmentDirectional.topEnd,
          ),
        ],
      ) ,











       ],
      ),
    );
  }
}
