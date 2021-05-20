// https://www.youtube.com/watch?v=Fo04xk9gIFo
// Display data from a JSON

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navalism',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Display data from a JSON'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title}) : super();

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _lista());
  }

  Widget _lista() {
    final lst = [
      ListTile(
        trailing: Icon(Icons.ac_unit),
        title: Text('Objecto 1'),
        subtitle: Text('Subtitulo 1'),
      ),
      ListTile(
        trailing: Icon(Icons.ac_unit),
        title: Text('Objecto 2'),
        subtitle: Text('Subtitulo 2'),
      ),
      ListTile(
        trailing: Icon(Icons.ac_unit),
        title: Text('Objecto 3'),
        subtitle: Text('Subtitulo 3'),
      ),
      ListTile(
        trailing: Icon(Icons.ac_unit),
        title: Text('Objecto 4'),
        subtitle: Text('Subtitulo 4'),
      ),
    ];

    return ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context, index) {
          return lst[index];
        });
  }
}
