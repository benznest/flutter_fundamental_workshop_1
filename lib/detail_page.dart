import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.red[300],
      title: Text("Detail"),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.file_download), onPressed: () {}),
        IconButton(icon: Icon(Icons.delete), onPressed: () {}),
        IconButton(icon: Icon(Icons.share), onPressed: () {}),
      ],
    ), body: Container(color: Colors.grey[400],
        child: ListView(
            children: <Widget>[
              Container(margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(children: <Widget>[ Text("Lorem ipsum dolor",
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Icon(Icons.star_border, size: 30)
                      ]),
                      SizedBox(height: 16),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                              "sed do eiusmod tempor incididunt ut labore Lorem "
                              "ipsum dolor sit amet, consectetur adipiscing elit,"
                              "sed do eiusmod tempor incididunt ut labore Lorem "
                              "ipsum dolor sit amet, consectetur Lorem "
                              "ipsum dolor sit amet, consectetur adipiscing elit,"
                              "sed do eiusmod tempor incididunt ut labore "
                              "adipiscing elit,"
                              "sed do eiusmod tempor incididunt ut labore Lorem "
                              "ipsum dolor sit amet, consectetur adipiscing elit,"
                              "sed do eiusmod tempor incididunt ut labore Lorem "
                              "ipsum dolor sit amet, consectetur adipiscing elit,"
                              "sed do eiusmod tempor incididunt ut labore"),
                      SizedBox(height: 16),
                      Image.network("https://images.unsplash.com/photo-1556912172-45b7abe8b7e1?auto=format&fit=crop&w=1000&q=80")
                    ],))
            ])));
  }
}

