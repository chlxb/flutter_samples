import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('无限滚动列表'),
      ),
      body: Suggestion(),
    );
  }
}

class Suggestion extends StatefulWidget {
  @override
  _SuggestionState createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  Widget _buildSuggestions() {
    return new ListView.builder(itemBuilder: (context, i) {
      // 在奇数行添加分割线 widget。
      if (i.isOdd) return new Divider();

      // i ~/ 2 表示 i 除以 2，返回值是向下取整
      final index = i ~/ 2;
      if (index >= _suggestions.length) {
        // 如果是列表的最后一个单词，再生成10个单词添加到建议列表；
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new  Text(pair.asPascalCase, style: _biggerFont,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }
}