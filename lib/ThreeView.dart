import 'package:flutter/material.dart';
import 'package:flutter_moduleexcise/fiveData.dart';
class twoView extends StatefulWidget {
  @override
  _twoViewState createState() => _twoViewState();
}
class _twoViewState extends State<twoView> {
  @override
  Widget build(BuildContext context) {
    return pageSelectView();
  }
}

class pageSelectView extends StatefulWidget {
  @override
  _pageSelectViewState createState() => _pageSelectViewState();
}
class _pageSelectViewState extends State<pageSelectView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     leading: IconButton(icon:Icon(Icons.opacity),onPressed: (){},),//坐标按钮
     title: Text('flutter入门练习'),
     actions: [
      IconButton(icon:Icon(Icons.ac_unit_outlined), onPressed:(){}),//右边按钮
      IconButton(icon: Icon(Icons.computer), onPressed:(){}),//actions:[IconButton]
      IconButton(icon: Icon(Icons.height), onPressed:(){}),//actions//IconButton
     ],
   ),
      body:TabbarDemo(),
    );
  }
}
class TabbarDemo extends StatefulWidget {
  @override
  _TabbarDemoState createState() => _TabbarDemoState();
}
class _TabbarDemoState extends State<TabbarDemo> {
  final List<String> _tabValues = ["语文","数嘘'","历史","河南","背景","eeeqewqeq","eqewqeqe","eqewqeq"];
  TabController _controller;
  @override
  void initState(){
  super.initState();
  _controller = TabController(length: _tabValues.length,vsync:ScrollableState(),);
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
   title: Text("TabBar"),
   bottom: TabBar(tabs:_tabValues.map((f){return Text(f);}).toList(),
   controller: _controller,
   indicatorColor:Colors.red,
     indicatorSize:TabBarIndicatorSize.tab,
     isScrollable: true,
     labelColor: Colors.red,
     unselectedLabelColor: Colors.black,
     indicatorWeight: 5.0,
     labelStyle: TextStyle(height:3),

   ),
   ),
    body:TabBarView(
    controller: _controller,
      children: _tabValues.map((f){return Center(child: Text(f),);}).toList(),
    ),

    );
  }
}
class BottomNavigationBarDemon extends StatefulWidget {
  @override
  _BottomNavigationBarDemonState createState() => _BottomNavigationBarDemonState();
}
class _BottomNavigationBarDemonState extends State<BottomNavigationBarDemon> {
  @override
  int _selePage = 1;
  Widget build(BuildContext context) {
    return Scaffold(
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
class SnapDemo extends StatelessWidget {
  final String title;

  SnapDemo({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            expandedHeight: 250,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("name"),
              background: Image.network(
                'http://img1.mukewang.com/5c18cf540001ac8206000338.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final isOdd = index % 2 == 1;
                return Container(
                  alignment: Alignment.center,
                  color: isOdd ? Colors.white : Color(0xFFEAEAEA),
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                );
              },
              childCount: 50,
            ),
            itemExtent: 80,
          ),
        ],
      ),
    );
  }
}
class PinnedDemo extends StatelessWidget {

  PinnedDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("name"),
              background: Image.network(
                'http://img1.mukewang.com/5c18cf540001ac8206000338.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final isOdd = index % 2 == 1;
                return Container(
                  alignment: Alignment.center,
                  color: isOdd ? Colors.white : Color(0xFFEAEAEA),
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                );
              },
              childCount: 50,
            ),
            itemExtent: 80,
          ),
        ],
      ),
    );
  }
}