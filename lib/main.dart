import 'package:flutter/material.dart';
import 'package:flutter1_llayout/index_list.dart';
import 'package:flutter1_llayout/Pages/first_app.dart';
import 'package:flutter1_llayout/Pages/statefule_widget.dart';
import 'package:flutter1_llayout/Pages/infinite_listview.dart';
import 'package:flutter1_llayout/Pages/InteractivityPage.dart';

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
          title: Text('Top Lakes'),
        ),
        body: new HomePage(),
      ),
      routes: <String, WidgetBuilder> {
        '/Pages/FirstAppPage': (_) => new FirstAppPage(),
        '/Pages/ExternalPackage': (_) => new FirstAppPage(),
        '/Pages/StatefulWidget': (_) => new StatefuleWidgetPage(),
        '/Pages/InfiniteListPage': (context) => new InfiniteListPage(),
        '/Pages/InteractivityPage': (_) => new InteractivityPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {

  void _handleListItemTap(BuildContext context, String name) {
    print(name);
    var routerName = '/Pages' + name;
    Navigator.of(context).pushNamed(routerName);
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
//
//    Widget titleSection = new Container(
//        padding: const EdgeInsets.all(32.0),
//        child: new Row(children: [
//          new Expanded(
//              child: new Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                new Container(
//                    padding: const EdgeInsets.only(bottom: 8),
//                    child: new Text('Onschinen Lake Compground',
//                        style: new TextStyle(
//                            fontWeight: FontWeight.bold, fontSize: 10))),
//                new Text('Kandersteg, Switzerland',
//                    style: new TextStyle(color: Colors.grey[500], fontSize: 20))
//              ])),
//          new FavoriteWidget(),
//
////          new Icon(
////            Icons.star,
////            color: Colors.red[500],
////          ),
////          new Text('41'),
//        ]));
//
//    Column _buildButtonColumn(IconData icon, String label) {
//      Color color = Theme.of(context).primaryColor;
//      return new Column(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          new Icon(icon, color: color),
//          new Container(
//              margin: const EdgeInsets.only(top: 8.0),
//              child: new Text(label,
//                  style: new TextStyle(
//                      fontSize: 12.0,
//                      fontWeight: FontWeight.w400,
//                      color: color)))
//        ],
//      );
//    }
//
//    Widget buttonSection = new Container(
//      child: new Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          _buildButtonColumn(Icons.call, 'CALL'),
//          _buildButtonColumn(Icons.near_me, 'ROUTE'),
//          _buildButtonColumn(Icons.share, 'SHARE'),
//        ],
//      ),
//    );
//
//    Widget textSection = new Container(
//        padding: const EdgeInsets.fromLTRB(32, 10, 32, 0),
//        child: new Text(
//            '''Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
//      ''',
//            softWrap: true));
//
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
//
//    Widget shopList = new Container(
//      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
//      padding: EdgeInsets.all(10),
//      width: 100,
//      height: 200,
//      child: new ShoppingList(
//        products: <Product>[
//          new Product(name: 'Eggs'),
//          new Product(name: 'Flour'),
//          new Product(name: 'Chocolate chips'),
//          new Product(name: 'Car'),
//        ],
//      ),
//      decoration: new BoxDecoration(color: Colors.lightGreen, border: new Border.all(color: Colors.grey, width: 5),),
//    );
//
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
//            Image.asset(
//              'images/lake.jpg',
//              width: 600.0,
//              height: 240.0,
//              fit: BoxFit.cover,
//            ),
//            titleSection,
//            buttonSection,
//            textSection,
//            stateManagementCase,
//            stateCase,
//            shopList,
//          ],
//        ),
//      ),
//    );
//  }
//}
