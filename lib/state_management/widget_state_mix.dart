import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget {
  @override
  _ParentWidgetCState createState() => _ParentWidgetCState();
}

class _ParentWidgetCState extends State<ParentWidgetC> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapBoxC(onChanged: _handleTapBoxChanged, active: _active,)
    );
  }
}

class TapBoxC extends StatefulWidget {
  TapBoxC({Key key, this.active: false, @required this.onChanged }) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  _TapBoxCState createState() => new _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails down) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails up) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: new Column(children: <Widget>[
        new Text("managed by mix"),
        new GestureDetector(
          onTapCancel: _handleTapCancel,
          onTap: _handleTap,
          onTapDown: _handleTapDown,
          onTapUp: _handleTapUp,
          child: new Container(
            child: new Center(child: new Text(widget.active ? "active" : "Inactive", style: new TextStyle(fontSize: 32.0, color: Colors.white),),),
            width: 150,
            height: 100,
            decoration: new BoxDecoration(border: _highlight ? new Border.all(color: Colors.red[700], width: 10.0) : null),
          ),
        )
      ],),
      decoration: new BoxDecoration(color: widget.active ? Colors.lightGreen[700] : Colors.grey[600]),
    );
  }
}