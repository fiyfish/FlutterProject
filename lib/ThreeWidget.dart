import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class threeView extends StatefulWidget {
  @override
  _threeViewState createState() => _threeViewState();
}

class _threeViewState extends State<threeView> {
  @override
  Widget build(BuildContext context) {
    return twoViewAgain();
  }
}
class oneView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Container(
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
