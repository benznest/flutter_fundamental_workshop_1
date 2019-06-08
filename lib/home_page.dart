import 'package:flutter/material.dart';
import 'package:flutter_fundamental_app/detail_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Text("My App"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.filter_list), onPressed: () {}),
          ],
        ),
        drawer: Drawer(child: ListView(children: <Widget>[
          DrawerHeader(padding: EdgeInsets.all(0),
              child: Container(height: 200, color: Colors.red[300],
                  child: Center(child:
                  Column(mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CircleAvatar(radius: 30, backgroundColor: Colors.red[100],
                            child: Icon(Icons.movie, color: Colors.white, size: 30)),
                        SizedBox(height: 8),
                        Text("Flutter Fundamental #2",
                            style: TextStyle(color: Colors.white, fontSize: 20))
                      ])))),
          ListTile(
              leading: Icon(Icons.person, size: 40),
              title: Text("Profile"),
              subtitle: Text("View and update your profile.")),
          ListTile(
              leading: Icon(Icons.settings, size: 40),
              title: Text("Setting"),
              subtitle: Text("Configuration about this app.")),
        ]),),
        body: Container(color: Colors.grey[400],
            child: ListView(children: <Widget>[
              buildRowEmail(),
              buildRowEmail(opened: true),
              buildRowEmail(opened: true),
              buildRowEmail(),
              buildRowEmail(),
              buildRowEmail(opened: true),
              buildRowEmail(),
            ])));
  }

  Widget buildRowEmail({bool opened = false}) {
    Widget widget =
    Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(radius: 30, backgroundColor: Colors.red[300],
              child: Icon(Icons.email, color: Colors.white, size: 30)),
          SizedBox(width: 16,),
          Flexible(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Lorem ipsum dolor",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                        "sed do eiusmod tempor incididunt ut labore"),
              ])),
          Column(mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("15.05",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                Icon(Icons.star_border)
              ]),
        ]);

    if (opened) {
      widget = Opacity(opacity: 0.5, child: widget);
    }

    return GestureDetector(child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 4),
        color: Colors.white, child: widget), onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
    },);
  }
}