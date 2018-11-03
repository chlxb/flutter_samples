import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'dart:convert';

typedef void ListItemDidTapped(BuildContext context, String routerName);

class SampleIndexList extends StatefulWidget {
  SampleIndexList({this.onItemTap}) : super();

  final ListItemDidTapped onItemTap;

  _ReadAndWriteDemoState createState() => new _ReadAndWriteDemoState();
}

class ListModel {
  final String title;
  final String routerName;

  ListModel({this.title, this.routerName});

  factory ListModel.fromJson(Map<String, dynamic> json) {
    return ListModel(
      title: json['title'],
      routerName: json['routerName'],
    );
  }
}

class _ReadAndWriteDemoState extends State<SampleIndexList> {
  List<ListModel> _data = [];
  @override
  void initState() {
    super.initState();

    _readLocalItemData().then((List<dynamic> list) {
      List<ListModel> arr = [];
      for (var en in list) {
        ListModel p = ListModel.fromJson(en);
        arr.add(p);
      }
      setState(() {
        _data = arr;
      });
    });
  }

  Future<List<dynamic>> _readLocalItemData() async {
    try {
      String cont = await rootBundle.loadString('resources/list.json');
      List<dynamic> list = json.decode(cont);
      return list;
    } on FileSystemException {
      return List();
    }
  }

  void _handleTap(String name) {
    widget.onItemTap(context, name);
  }

  List<Widget> _items() {
    List<Widget> items = [];
    for (var model in _data) {
      items.add(new ListTile(
        onTap: () {
          _handleTap(model.routerName);
        },
        leading: new Icon(Icons.map),
        title: new Text(model.title, style: new TextStyle(fontSize: 20.0, color: Colors.amberAccent[400]),),
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: const EdgeInsets.all(16),
      scrollDirection: Axis.vertical,
      children: _items(),
    );
  }
}