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
    return new ListTile(
      title: new Text(_datas[index].title),
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
    _getLocalDatas().then((List<RecommendModel> list) {
      setState(() {
        _datas = list;
      });
    });
  }
  
  Future<List<RecommendModel>> _getLocalDatas() async {
    try {
      String locale = await rootBundle.loadString('resources/datas.json');
      List<dynamic> datas = json.decode(locale);
      List<RecommendModel> list = [];
      for (var en in datas) {
        RecommendModel p = RecommendModel.formJson(en);
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
  
  RecommendModel({this.title, this.subtitle});
  
  factory RecommendModel.formJson(Map<String, dynamic> json) {
    return RecommendModel(title: json['title'], subtitle: json['subtitle']);
  }
}