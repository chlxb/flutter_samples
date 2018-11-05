import 'package:flutter/material.dart';
import 'ParentPage.dart';

class CardPage extends ParentPage {
  CardPage({@required this.title}) : super();
  final String title;

  @override
  String get pageTitle => this.title;

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return null;
  }
}