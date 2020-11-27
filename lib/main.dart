import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_moduleexcise/Exercise.dart';
import 'MaterialAndScoffold.dart';
import 'OneView.dart';
import 'TwoView.dart';
import 'ThreeView.dart';
import 'package:flutter_moduleexcise/ThreeWidget.dart';
import 'fiveData.dart';
void main() {
  runApp(MyApp());
}
abstract class Animal{

  speak();//抽象类不可以去生成实例对象可以被继承
  printInfo(){print("我不是虾米");}
}
class Dog extends Animal{

  @override
  speak() {
    // TODO: implement speak
    print("不想当🦈的鱼不是好鱼");
  }

}

class BottomNavigationBarDemon extends StatefulWidget {
  @override
  _BottomNavigationBarDemonState createState() => _BottomNavigationBarDemonState();
}
class _BottomNavigationBarDemonState extends State<BottomNavigationBarDemon> {
  @override
  int _selePage = 1;
  List<StatefulWidget>_pageList;
  void initState(){
  super.initState();
  _pageList = <StatefulWidget>[
    new oneViewShow(),
    new twoStack(),
    new twoView(),
    new threeView(),
    new fiveData(),
  ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selePage],
      bottomNavigationBar:BottomNavigationBar(
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.height,color: Colors.black,),activeIcon:Icon(Icons.computer,color:Colors.blue),title:Text("微信")),//BottomNavigationBarItem
          BottomNavigationBarItem(icon:Icon(Icons.wallet_giftcard,color: Colors.black,),activeIcon:Icon(Icons.wallet_membership,color:Colors.blue),title:Text("微信")),
          BottomNavigationBarItem(icon:Icon(Icons.watch,color: Colors.black,),activeIcon:Icon(Icons.sanitizer,color:Colors.blue),title:Text("微信")),//BottomNavigationBarItem
          BottomNavigationBarItem(icon:Icon(Icons.waves,color: Colors.black,),activeIcon:Icon(Icons.satellite_rounded,color:Colors.blue),title:Text("微信")),
        ],
        iconSize: 24,
        currentIndex: _selePage,
        onTap:(index){
          if(index == 0){
            print("0");
          }else if(index == 1){
            print("1");
          }
          setState(() {
            _selePage = index;
          });
        },
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigationBarDemon(),

    );
  }
}
class indexSelect extends StatefulWidget {
  @override
  _indexSelectState createState() => _indexSelectState();
}

class _indexSelectState extends State<indexSelect>  with TickerProviderStateMixin{
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text("首页"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.all_inclusive),
        title: new Text("想法"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.computer),
        title: new Text("市场"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_alert),
        title: new Text("通知"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.perm_identity),
        title: new Text("我的"),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }
    _pageList = <StatefulWidget>[
      new oneViewShow(),
      new twoStack(),
      new twoView(),
      new threeView(),
      new fiveData(),
    ];
    _currentPage = _pageList[_currentIndex];
  }
  void _rebuild() {
    setState(() {});
  }
  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) =>
        navigationIconView.item)
            .toList(),
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _navigationViews[_currentIndex].controller.reverse();
            _currentIndex = index;
            _navigationViews[_currentIndex].controller.forward();
            _currentPage = _pageList[_currentIndex];
          });
        }
    );

    return new MaterialApp(
        home: new Scaffold(
          body: new Center(
              child: _currentPage
          ),
          bottomNavigationBar: bottomNavigationBar,
        ),
        theme: GlobalConfig.themeData
    );
  }
}
