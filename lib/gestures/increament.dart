import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
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
      child: Row(
        children: <Widget>[
          new RaisedButton(onPressed: _handleTap, child: new Text('Increment'),),
          new Text('$_count'),
        ],
      ),
      decoration: new BoxDecoration(color: Colors.grey),
    );
  }
}