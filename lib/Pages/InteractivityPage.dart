import 'package:flutter/material.dart';
import 'package:flutter1_llayout/Pages/infinite_listview.dart';

class InteractivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('无限滚动列表'),
      ),
      body: Suggestion(shouldInteractivity: true,),
    );
  }
}