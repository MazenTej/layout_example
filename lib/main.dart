import 'package:flutter/material.dart';
import './image.dart';
import './secondSection.dart';
import './thirdSection.dart';
import './fourthSection.dart';
import './pages.dart';

void main() => runApp(layoutApp());

class layoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout app',
      initialRoute: '/',
      routes: {
        '/': (context) => layout(),
        '/call': (context) => call(),
        '/route': (context) => route(),
        '/share': (context) => share()
      },
    );
  }
}

class layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout App'),
      ),
      body: ListView(
        children: [
          imageSection(),
          secondSection(),
          thirdSection(),
          fourthSection(),
        ],
      ),
    );
  }
}
