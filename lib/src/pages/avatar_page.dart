import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://avatarfiles.alphacoders.com/244/244597.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.greenAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(placeholder: AssetImage('assets/jar-loading.gif'), image: NetworkImage('https://www.soyfutbol.com/__export/1587482025137/sites/debate/img/2020/04/21/andres-iniesta-real-madrid-fichaje-barcelona-e1553057263763.jpg_1902800913.jpg'), fadeInDuration: Duration(milliseconds: 200),),
      ),
    );
  }
}