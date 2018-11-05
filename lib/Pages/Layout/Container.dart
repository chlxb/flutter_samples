import 'package:flutter/material.dart';
import 'ParentPage.dart';

class ContainerPage extends ParentPage {
  ContainerPage({@required this.title}) : super();
  final String title;

  @override
  String get pageTitle => this.title;

  @override
  Widget buildBody(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Container(
          child: new Text('许多布局会自由通过 Container 来使用padding分隔widget，或者添加边框（border）或边距（margin）。您可以通过将整个布局放入容器并更改其背景颜色或图片来更改设备的背景。\n'
              '使用概要：\n'
              '1. 添加padding, margins, borders, 边框圆角\n'
              '2. 改变背景颜色或图片\n'
              '3. 包含单个子widget，但该子widget可以是Row，Column，甚至是widget树的根', style: new TextStyle(fontSize: 16),),
          padding: EdgeInsets.all(16),
        ),
        new Container(
          padding: EdgeInsets.all(8),
          decoration: new BoxDecoration(color: Colors.blueGrey, border: new Border.all(color: Colors.orange, width: 2)),
          child: new Column(
            children: <Widget>[
              _buildRow('pic1.jpg', 'pic2.jpg'),
              _buildRow('pic3.jpg', 'pic4.jpg'),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildCornerImage(String name) {
    return new Container(
      decoration: new BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(3)), border: new Border.all(color: Colors.orange, width: 6),),
      margin: EdgeInsets.all(4),
      child: new Image.asset(name,),
    );
  }

  Widget _buildRow(String pic1, String pic2) {
    return new Row(
      children: <Widget>[
        new Expanded(child: _buildCornerImage('images/Container/'+pic1)),
        new Expanded(child: _buildCornerImage('images/Container/'+pic2)),
      ],
    );
  }
}
