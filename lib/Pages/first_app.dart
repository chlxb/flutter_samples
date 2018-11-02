import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class FirstAppPage extends StatelessWidget {

  final paddingEdge = EdgeInsets.all(32);

  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('体验 Flutter'),
      ),
      body: new Container(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Container(
              padding: paddingEdge,
              child: new Text('1. 应用程序继承了 StatelessWidget，这将会使应用本身也成为一个widget。 在Flutter中，大多数东西都是widget，包括对齐(alignment)、填充(padding)和布局(layout)\n'
                  '2. 在Android Studio的编辑器视图中查看pubspec时，单击右上角的 Packages get，这会将依赖包安装到您的项目。您可以在控制台中看到以下内容 \n'
                  '3. widget的主要工作是提供一个build()方法来描述如何根据其他较低级别的widget来显示自己\n'
                  '4. 本示例中的body的widget树中包含了一个Center widget。 Center widget可以将其子widget树对其到屏幕中心',),
            ),
            new Container(
              padding: paddingEdge,
              child: new Text('1. pubspec文件管理Flutter应用程序的assets(资源，如图片、package等)。 在pubspec.yaml中，将english_words（3.1.0或更高版本）添加到依赖项列表\n'
                  '2. 终端输入命令 `flutter packages get` 更新依赖包 \n',),
            ),
            new Text(wordPair.asPascalCase, style: new TextStyle(fontSize: 20, color: Colors.greenAccent),),
          ],
        )
      ),
    );
  }
}