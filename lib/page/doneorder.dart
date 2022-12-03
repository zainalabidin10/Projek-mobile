import 'package:flutter/material.dart';

class Shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(10.0),),
            new Padding(padding: new EdgeInsets.all(10.0),),
            new Icon(Icons.shopping_cart,size: 90.0,color: Colors.lightBlueAccent,),
            new Text("Selesai", style: new TextStyle(fontSize: 30.0, color: Colors.lightGreen),)
          ],
        ),
      ),
    );
  }
}