import 'package:flutter/material.dart';
import 'package:flutter1_llayout/common/RandomWords.dart';

class StatefuleWidgetPage extends StatelessWidget {

  final paddingEdge = EdgeInsets.all(32);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('有状态的部件'),
      ),
      body: new Container(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                padding: paddingEdge,
                child: new Text('Stateless widgets 是不可变的, 这意味着它们的属性不能改变 - 所有的值都是最终的\n'
                    'Stateful widgets 持有的状态可能在widget生命周期中发生变化. 实现一个 stateful widget 至少需要两个类:\n'
                    '   1. 一个 StatefulWidget类。\n'
                    '   2. 一个 State类。 StatefulWidget类本身是不变的，但是 State类在widget生命周期中始终存在. \n',),
              ),
              new RandomWords(),
            ],
          )
      ),
    );
  }
}

