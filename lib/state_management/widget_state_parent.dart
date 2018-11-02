import 'package:flutter/material.dart';

class ParentWidgetB extends StatefulWidget {
  @override
  _ParentWidgetBState createState() => new _ParentWidgetBState();
}

class _ParentWidgetBState extends State<ParentWidgetB> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapBoxB(
        onChanged: _handleTapBoxChanged,
        active: _active,
      ),
    );
  }
}

class TapBoxB extends StatelessWidget {
  TapBoxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: new Column(
        children: <Widget>[
          new Text('managed by parent'),
          new GestureDetector(
            onTap: _handleTap,
            child: new Container(
              child: new Center(
                child: new Text(
                  active ? 'Active' : 'Inactive',
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
          color: active ? Colors.lightGreen[700] : Colors.grey[600]),
    );
  }
}
