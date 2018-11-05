import 'package:flutter/material.dart';
import 'ParentPage.dart';

class GridViewPage extends ParentPage {
  GridViewPage({@required this.title})  : super();
  final String title;

  @override
  String get pageTitle => this.title;

  @override
  Widget buildBody(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          child: new Text(
            '使用GridView将widget放置为二维列表。 GridView提供了两个预制list，或者您可以构建自定义网格。当GridView检测到其内容太长而不适合渲染框时，它会自动滚动\n'
                'GridView 概览:\n'
                '1. 在网格中放置widget\n'
                '2. 检测列内容超过渲染框时自动提供滚动\n'
                '3. 构建您自己的自定义grid，或使用一下提供的grid之一:\n'
                '    *GridView.count 允许您指定列数\n'
                '    *GridView.extent 允许您指定项的最大像素宽度',
            style: new TextStyle(fontSize: 16),),
        padding: EdgeInsets.all(16),),
        new Expanded(child: _buildGrid(),),
      ],
    );
  }

  Widget _buildGrid() {
    return new GridView.extent(
      scrollDirection: Axis.vertical,
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      children: _buildGridTileList(30),
    );
  }

  List<Container> _buildGridTileList(int count) {
    return List<Container>.generate(count, (int index) => new Container(child: new Image.asset('images/grid/pic${index+1}.jpg'),));
  }
}