import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Learn',
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  Widget round(color, child) {
    return Container(
      height: 55,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(60), color: color),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: child,
    );
  }

  Widget one(color,child) {
    return round(
      color,
      Center(
        child: child
      ),
    );
  }

  Widget two(color, icon, text, inverted) {
    List<Widget> twoItems = [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.white),
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 30),
        child: Icon(icon, color: color,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      )
    ];
    if(inverted==true){
      twoItems.insert(1, twoItems.removeAt(0));
    }
    return round(
      color,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: twoItems
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: <Widget>[
          SizedBox(height: 15),
          one(Colors.red, Text('LOGIN',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),),
          SizedBox(height: 15),
          two(Colors.orangeAccent, Icons.email, 'SEND EMAIL',false),
          SizedBox(height: 15),
          two(Colors.pink, Icons.headset_mic, 'LISTEN TO MUSIC',true),
          SizedBox(height: 15),
          two(Colors.deepOrange, Icons.share, 'SHARE ON SOCIAL',false),
          SizedBox(height: 15),
          one(Colors.lightGreen, Icon(Icons.account_box,color: Colors.white,)),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            one(Colors.blue, Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Icon(Icons.call,color: Colors.white,),
            )),
            one(Colors.red, Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Icon(Icons.message,color: Colors.white,),
            )),
            ],
          ),
          SizedBox(height: 15),
          two(Colors.green, Icons.settings, '',true),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              two(Colors.deepOrange, Icons.play_arrow, 'PLAY',true),
              SizedBox(width: 10,),
              one(Colors.lightGreenAccent, Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Text('OK',
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
