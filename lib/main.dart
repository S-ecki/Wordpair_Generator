import 'package:flutter/material.dart';
// get packages from pub.dev
// add to dependencies in pubspec.yaml
// (copy dependency line from installing chapter on pub.dev)
// installs auto in vsc
// import here in main (line from pub.dev)
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme for whole Material App
        theme: ThemeData(primaryColor: Colors.purple[900]),
        // scaffold wraped around other properties
        home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  // final -> cannot directly be reassigned (CAN be dynamic)
  // but does NOT have to be known beforehand (eg Date.now is ok)
  // WordPair is imported from english_words
  // [] makes it an Array
  final _randomWordPairs = <WordPair> [];

  Widget _buildList() {
    // ListView is scrollable list
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      // builds Widgets on demand
      // count is number of to-generate Widget in listView
      itemBuilder: (context, count){
        // for every second widget, we display a dividing line
        if(count.isOdd) return Divider();
        // ~/ divides and truncats
        final index = count ~/ 2;
        // if list of randomWords is exhausted
        if(index >= _randomWordPairs.length) {
          // we add 10 new wordsPairs to the list with provided functions
          _randomWordPairs.addAll(generateWordPairs().take(10));
        }
        // if Divider WASNT returned, we build a row with self definded function
        return _buildRow(_randomWordPairs[index]);
      },
    );
  }

  ListTile _buildRow(WordPair pair) {
    // one Tile of ListView
    // pair passed in is _randomWordPairs[index]
    return ListTile(
      title: Text(
        // return the pair
        pair.asCamelCase,
        // add custom styling to it
        style: TextStyle(
          fontSize: 18.0
        )  
      ) 
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WordPair Generator')
      ),
      // builds ListView which builds its rows itself
      body: _buildList()
    );
  }
}
