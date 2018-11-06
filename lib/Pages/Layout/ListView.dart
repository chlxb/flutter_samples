import 'package:flutter/material.dart';
import 'ParentPage.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:io';

class ListViewPage extends ParentPage {
  ListViewPage({@required this.title})  : super();
  final String title;

  @override
  String get pageTitle => this.title;

  @override
  Widget buildBody(BuildContext context) {
    return RecommendList();
  }
}

class RecommendList extends StatefulWidget {

  @override
  _RecommendListState createState() => _RecommendListState();

}

class _RecommendListState extends State<RecommendList> {
  List<RecommendModel> _datas = [];

  Widget _buildLisTile(BuildContext context, int index) {
    var model = _datas[index];
    return new ListTile(
      title: new Text(model.title, style: new TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
      subtitle: new Text(model.subtitle),
      leading: model.type == "theater" ? Icon(Icons.theaters, color: Colors.orangeAccent[400],) : Icon(Icons.restaurant, color: Colors.orangeAccent[400],),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildLisTile,
      itemCount: _datas.length,
    );
  }

  @override
  void initState() {
    super.initState();
    _getLocalDatas().then((List<RecommendModel> datas) {
      setState(() {
        _datas = datas;
      });
    });
  }
  
  Future<List<RecommendModel>> _getLocalDatas() async {
    try {
      String locale = await rootBundle.loadString('resources/datas.json');
      List<dynamic> datas = json.decode(locale);
      List<RecommendModel> list = [];
      for (var js in datas) {
        RecommendModel p = RecommendModel.formJson(js);
        list.add(p);
      }
      return list;
    } on FileSystemException {
      return [];
    }
  }
}

class RecommendModel {
  final String title;
  final String subtitle;
  final String type;
  
  RecommendModel({this.title, this.subtitle, this.type});
  
  factory RecommendModel.formJson(Map<String, dynamic> json) {
    return RecommendModel(title: json['title'], subtitle: json['subtitle'], type: json['type']);
  }
}