import 'package:flutter/material.dart';
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
      body: BottomNavigationBarDemon(),
    );
  }
}
class BottomNavigationBarDemon extends StatefulWidget {
  @override
  _BottomNavigationBarDemonState createState() => _BottomNavigationBarDemonState();
}

class _BottomNavigationBarDemonState extends State<BottomNavigationBarDemon> {
  @override
  int _selePage = 0;
  Widget build(BuildContext context) {
    return Scaffold(
   bottomNavigationBar:BottomNavigationBar(
     items:<BottomNavigationBarItem>[
     BottomNavigationBarItem(icon:Icon(Icons.height,color: Colors.black,),activeIcon:Icon(Icons.computer,color:Colors.blue),title:Text("微信")),
       BottomNavigationBarItem(icon:Icon(Icons.wallet_giftcard,color: Colors.black,),activeIcon:Icon(Icons.wallet_membership,color:Colors.blue),title:Text("微信")),
       BottomNavigationBarItem(icon:Icon(Icons.watch,color: Colors.black,),activeIcon:Icon(Icons.sanitizer,color:Colors.blue),title:Text("微信")),
       BottomNavigationBarItem(icon:Icon(Icons.waves,color: Colors.black,),activeIcon:Icon(Icons.satellite_rounded,color:Colors.blue),title:Text("微信")),
     ],
   iconSize: 24,
   currentIndex: _selePage,
    onTap:(index){
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