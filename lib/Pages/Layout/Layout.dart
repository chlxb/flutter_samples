import 'package:flutter/material.dart';
import 'package:flutter1_llayout/common/favorite_widget.dart';

class Lakes extends StatelessWidget {

  Widget _buildHeader() {
    return new Image.asset('images/lake.jpg', height: 240, fit: BoxFit.cover,);
  }
  
  Widget _buildTitle() {
    return new Container(
        padding: EdgeInsets.all(16),
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new Column(
                children: <Widget>[
//                  new Container(
//                    child: new Text('Oeschinen Lake Campground', style: new TextStyle(fontWeight: FontWeight.bold),),
//                    padding: EdgeInsets.only(bottom: 8),
//                  ),
                  new Text('Oeschinen Lake Campground', style: new TextStyle(fontWeight: FontWeight.bold),),
                  new Text('Kandersteg, Switzerlandsss', style: new TextStyle(color: Colors.grey[500]),),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            new FavoriteWidget(),
          ],
        ),
    );
  }

  Widget _buildButtonIcon(BuildContext context, IconData icon, String title) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      children: <Widget>[
        new Icon(icon, color: color,),
        new Text(title, style: new TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: color),),
      ],
    );
  }

  Widget _buildButtons(BuildContext context) {
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      padding: EdgeInsets.all(16),
      decoration: new BoxDecoration(color: Colors.grey[200], border: new Border.all(color: Colors.blueAccent, width: 2)),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildButtonIcon(context, Icons.call, 'CALL'),
          _buildButtonIcon(context, Icons.near_me, 'ROUTE'),
          _buildButtonIcon(context, Icons.share, 'SHARE'),
        ],
      ),
    );
  }
  
  Widget _buildText() {
    return new Container(
      padding: EdgeInsets.all(16),
      child: new Text('''
 Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("layout"),
      ),
      body: ListView(
        children: <Widget>[
          _buildHeader(),
          _buildTitle(),
          _buildButtons(context),
          _buildText(),
        ],
      ),
    );
  }
}