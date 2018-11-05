import 'package:flutter/material.dart';
import 'package:flutter1_llayout/Pages/first_app.dart';
import 'package:flutter1_llayout/Pages/statefule_widget.dart';
import 'package:flutter1_llayout/Pages/infinite_listview.dart';
import 'package:flutter1_llayout/Pages/InteractivityPage.dart';
import 'package:flutter1_llayout/Pages/Layout/Layout.dart';
import 'package:flutter1_llayout/Pages/Layout/LayoutWidgets.dart';
import 'package:flutter1_llayout/Pages/Layout/Container.dart';
import 'Pages/Layout/GridView.dart';
import 'Pages/Layout/ListView.dart';
import 'Pages/Layout/Stack.dart';
import 'Pages/Layout/Card.dart';
import 'Pages/Layout/ListTile.dart';

class RouterManager {
  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return {
      '/Pages/FirstAppPage': (_) => new FirstAppPage(),
      '/Pages/ExternalPackage': (_) => new FirstAppPage(),
      '/Pages/StatefulWidget': (_) => new StatefuleWidgetPage(),
      '/Pages/InfiniteListPage': (context) => new InfiniteListPage(),
      '/Pages/InteractivityPage': (_) => new InteractivityPage(),
      '/Pages/Layout/lakes': (_) => Lakes(),
      '/Pages/Layout/LayoutWidgets': (_) => LayoutWidgets(),
      '/Pages/Layout/Container': (_) =>  ContainerPage(title: "Container"),
      '/Pages/Layout/GridView': (_) => GridViewPage(title: 'GridView',),
      '/Pages/Layout/ListView': (_) => ListViewPage(title: 'ListView',),
      '/Pages/Layout/Stack': (_) => StackPage(title: 'Stack',),
      '/Pages/Layout/Card': (_) => CardPage(title: 'Card'),
      '/Pages/Layout/ListTile': (_) => ListTilePage(title: 'ListTile'),
    };
  }

  static navigatorTo(BuildContext context,  String routerName) {
    var router = '/Pages' + routerName;
    Navigator.of(context).pushNamed(router);
  }
}