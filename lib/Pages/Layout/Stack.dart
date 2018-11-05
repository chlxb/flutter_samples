import 'package:flutter/material.dart';
import 'ParentPage.dart';

class StackPage extends ParentPage {
  StackPage({@required this.title})  : super();
  final String title;

  @override
  String get pageTitle => this.title;

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return null;
  }
}