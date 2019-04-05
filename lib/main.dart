import 'package:flutter/material.dart';
main(List<String> args) {
  runApp(new MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double iconSize =40.0;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless Widget"),
      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(title: new Text("Yo amo flutter", style: new TextStyle(color: Colors.red, fontSize: 30)),icon: new Icon(Icons.favorite, size: iconSize,color: Colors.red)),
              new MyCard(title: new Text("Me gusta este video", style: new TextStyle(color: Colors.blue, fontSize: 30)),icon: new Icon(Icons.thumb_up, size: iconSize,color: Colors.blue)),
              new MyCard(title: new Text("Next Video", style: new TextStyle(color: Colors.yellow, fontSize: 30)),icon: new Icon(Icons.queue_play_next, size: iconSize,color: Colors.yellow))
            ],
          ),
        ),
        
      ),
    );
  }
  
}


class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;
  MyCard({this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: new Card(
        
        child: Column(
          children: <Widget>[
            this.title,
            this.icon
          ],
        ),
      ),
    );
  }
}