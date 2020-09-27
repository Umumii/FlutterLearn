/*
 * @Author:mabintao
 * @Date: 2020-09-27 10:32:16
 * @LastEditTime: 2020-09-27 15:48:18
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \dayonelistview\lib\main.dart
 */
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
    title: "myyy",
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Flutter Demo1"),
      // ),
      body: Center(
        child: new RandomWords(),
        // child: Text(wordPair.asPascalCase),
        //child: Text('Hello Flutter1234'),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, index) {
        if (index.isOdd) {
          return new Divider();
        }
        final i = index ~/ 2;
        if (i >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[i]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    //return Text(wordPair.asPascalCase);
    return Scaffold(
      appBar: AppBar(
        title: Text("Startup Name Generator"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          final titles = _saved.map(
            (pair) {
              return ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided =
              ListTile.divideTiles(context: context, tiles: titles).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text("Save Suggestions"),
            ),
            body: ListView(
              children: divided,
            ),
          );
        },
      ),
    );
  }
}
