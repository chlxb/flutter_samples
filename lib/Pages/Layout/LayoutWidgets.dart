import 'package:flutter/material.dart';
import 'package:flutter1_llayout/RouterManager.dart';

class LayoutWidgets extends StatelessWidget {
  final widgets = ['Container', 'GridView', 'ListView', 'Stack', 'Card', 'ListTile',];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('常用布局 Widgets'),
      ),
      body: new ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: new Text('${widgets[i]}'),
              onTap: () {
                RouterManager.navigatorTo(context, '/Layout/'+'${widgets[i]}');
              },
            );
          }),
    );
  }
}