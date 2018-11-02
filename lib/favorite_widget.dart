import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => new _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 30;
  
  void _toggleFavorite() {
    setState(() {
        _favoriteCount -= _isFavorited ? 1 : -1;
        _isFavorited = !_isFavorited;
    });
  }
  
  Widget build(BuildContext context) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          padding: new EdgeInsets.all(0.0),
          child: new IconButton(icon: (_isFavorited ? new Icon(Icons.star) : new Icon(Icons.star_border)), color: Colors.red[500], onPressed: _toggleFavorite),
        ),
        new SizedBox(width: 18.0, child: new Container(child: new Text('$_favoriteCount'),),)
      ],
    );
  }
}