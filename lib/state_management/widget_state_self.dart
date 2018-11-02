import 'package:flutter/material.dart';

class TapboxA extends StatefulWidget {
  TapboxA({Key key}) : super(key: key);

  _TapboxAState createState() => new _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _hanleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: new Column(
        children: <Widget>[
          new Text('managed by self'),
          new GestureDetector(
            onTap: _hanleTap,
            child: new Container(
              child: new Center(
                child: new Text(
                  _active ? 'Active' : 'Inactive',
                  style: new TextStyle(fontSize: 32.0, color: Colors.white),
                ),
              ),
              width: 150,
              height: 100.0,
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
    );
  }
}
