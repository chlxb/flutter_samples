import 'package:flutter/material.dart';

abstract class ParentPage extends StatelessWidget {

  String get pageTitle;

  Widget buildBody(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(pageTitle),
      ),
      body: buildBody(context),
    );
  }
}