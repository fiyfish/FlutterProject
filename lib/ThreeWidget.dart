import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class StickyDemo extends StatefulWidget {
  final String title;

  StickyDemo({Key key, this.title}) : super(key: key);

  @override
  _StickyDemoState createState() => _StickyDemoState();
}

class _StickyDemoState extends State<StickyDemo>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    this.tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 0,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("twwwww"),
              background: Image.network(
                'http://img1.mukewang.com/5c18cf540001ac8206000338.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(
              child: TabBar(
                labelColor: Colors.black,
                controller: this.tabController,
                tabs: <Widget>[
                  Tab(text: 'Home'),
                  Tab(text: 'Profile'),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: this.tabController,
              children: <Widget>[
                Center(child: Text('Content of Home')),
                Center(child: Text('Content of Profile')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
class threeView extends StatefulWidget {
  @override
  _threeViewState createState() => _threeViewState();
}

class _threeViewState extends State<threeView> {
  @override
  Widget build(BuildContext context) {
    return StickyDemo();
  }
}
class oneView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Container(//不同部分用this.不同部分的名称汇总////thi.idea////_threeViewState///threeView///oneView
      child: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoActivityIndicator示例'),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
                width: 250,
                height: 250,
                left: width / 2 - 125,
                top: height / 2 - 125,
                child: Container(
                   decoration:BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(
                     Radius.circular(10.0),
                   ),),
                    padding: EdgeInsets.all(30),
                ),
            ),
            Positioned(
              top: height / 2 - 15,
              left: width / 2 - 15,
              width:30,
              height:30,
              child: CupertinoActivityIndicator(
              radius: 20.0, //值越大加载的图形越大
            ),),

            Positioned(
                top: height / 2 + 25,
                left:width / 2 - 50,
                width: 100,
                height: 30,
                child: Text("正在加载中...",textAlign:TextAlign.center,),)

          ],
        ),
      ),
    );
  }
}
class twoViewAgain  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 250,
          height: 250,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),color: Colors.red),
          child: Column(
             mainAxisAlignment:MainAxisAlignment.start,
            children: [
           CupertinoActivityIndicator(
          radius: 20.0, //值越大加载的图形越大
          ),
          Text("正在加载中...",textAlign:TextAlign.center,),
          ],),
      ),
    );
  }
}
//row直接嵌套小row去实现效果
Widget renderIntearactionArea(){

  return Container(
    margin: EdgeInsets.symmetric(vertical: 16),
    padding: EdgeInsets.symmetric(horizontal:16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children:[
        Icon(Icons.message,size: 16,color: Colors.white,),
        Padding(padding: EdgeInsets.only(left: 6)),
        Text("",style: TextStyle(fontSize:15,color: Color(0XFF999999)),),
        ]
        ),

        Row(
            children:[
              Icon(Icons.message,size: 16,),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text("",style: TextStyle(fontSize:15),),
            ],
        ),

        Row(
          children: [

           Icon(Icons.message,size: 16,),
            Padding(padding: EdgeInsets.only(left: 6)),
            Text("eqewqeqeqeq",style: TextStyle(fontSize: 15,color:Colors.white),)
          ],
        )
      ],
    ),
  );
}
Widget renderUserInfo(){
return Container(
    margin: EdgeInsets.only(top: 16),
    padding: EdgeInsets.symmetric(horizontal: 16),
  child:Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
       children:<Widget>[
         CircleAvatar(
           radius:20,
           backgroundColor: Color(0xFFCCCCCC),
           backgroundImage: NetworkImage(""),
         ),
       Padding(padding: EdgeInsets.only(left: 8)),
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text("",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0XF333333),),),
           Padding(padding: EdgeInsets.only(top: 2)),
           Text("",style: TextStyle(fontSize:12,color: Color(0xFF999999),),),
         ],
       ),
       ],
      ),

   Text("",style: TextStyle(fontSize: 13,color: Color(0xFF999999)),),
    ],
  ),
);
}
/*
class PetCard extends StatelessWidget {
  final PetCardViewModel data;
  const PetCard({Key key,this.data,}):super(key: key);

}
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit:StackFit.passthrough,
      children: <Widget>[
      ClipRect(//ClipRext矩形裁剪
        borderRadius:BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8),),
        child: Image.network("",height: 200,fit: BoxFit.fitWidth,),
      ),
     Positioned(child: Container(decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Color(Color.fromARGB(0,0,0, 0),Color.fromARGB(80,0,0,0),)])),))

      ],

    );
    );
  }
}
*/
class PetCardViewModel {
  /// 封面地址
  final String coverUrl;

  /// 用户头像地址
  final String userImgUrl;

  /// 用户名
  final String userName;

  /// 用户描述
  final String description;

  /// 话题
  final String topic;

  /// 发布时间
  final String publishTime;

  /// 发布内容
  final String publishContent;

  /// 回复数量
  final int replies;

  /// 喜欢数量
  final int likes;

  /// 分享数量
  final int shares;

  const PetCardViewModel({
    this.coverUrl,
    this.userImgUrl,
    this.userName,
    this.description,
    this.topic,
    this.publishTime,
    this.publishContent,
    this.replies,
    this.likes,
    this.shares,
  });


}