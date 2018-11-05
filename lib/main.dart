import 'package:flutter/material.dart';
import 'package:flutter1_llayout/RouterManager.dart';
import 'package:flutter1_llayout/index_list.dart';

void main() => runApp(new MyApp());

enum Type {
  FirstApp,
  ExternalPackage,
  StatefulWidget,
  InfiniteListView,
  NavigateToNewPage,
  FlutterLayouts,
  AddInteractivity,
  LocalJson,
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter samples'),
        ),
        body: new HomePage(),
      ),
      routes: RouterManager.routes(context),
    );
  }
}



class HomePage extends StatelessWidget {

  void _handleListItemTap(BuildContext context, String name) {
    RouterManager.navigatorTo(context, name);
  }

  @override
  Widget build(BuildContext context) {
    return new SampleIndexList(onItemTap: _handleListItemTap,);
  }
}

//class MyApps extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    Widget stateManagementCase = new Container(
//      margin: new EdgeInsets.symmetric(vertical: 20.0),
//      height: 120.0,
//      child: new ListView(
//        scrollDirection: Axis.horizontal,
//        children: <Widget>[
//          new TapboxA(),
//          new ParentWidgetB(),
//          new ParentWidgetC(),
//        ],
//      ),
//    );
//
//    Widget stateCase = new Column(
//      children: <Widget>[
//        new Text('State Case'),
//        new Container(
//          margin: new EdgeInsets.symmetric(vertical: 20.0),
//          height: 80,
//          child: new ListView(
//            scrollDirection: Axis.horizontal,
//            children: <Widget>[
//              new Counter(),
//              new CounterFlow(),
//            ],
//          ),
//        ),
//      ],
//    );

//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Top Lakes'),
//        ),
//        body: ListView(
//          scrollDirection: Axis.vertical,
//          children: [
//            stateManagementCase,
//            stateCase,
//            shopList,
//          ],
//        ),
//      ),
//    );
//  }
//}
