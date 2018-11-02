import 'package:flutter/material.dart';

class CounterFlow extends StatefulWidget {
  @override
  _CounterFlowState createState() => new _CounterFlowState();
}

class _CounterFlowState extends State<CounterFlow> {
  int _count = 0;

  void _handleTap() {
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(10),
      decoration: new BoxDecoration(color: Colors.grey),
      child: Row(
        children: <Widget>[
          new _Display(count: _count),
          new _Incrementor(onPressed: _handleTap,),
        ],
      ),
    );
  }
}

class _Display extends StatelessWidget {
  _Display({@required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count: $count');
  }
}

class _Incrementor extends StatelessWidget {
  _Incrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}
