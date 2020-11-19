import 'package:flutter/material.dart';

class call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Screen'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text('Welcome To the Call screen',
              style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}

class route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('route Screen'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text('Welcome To the Route screen',
              style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}

class share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
              colors: [Colors.pink, Colors.red, Colors.green, Colors.purple]),
        ),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text('Welcome To the Share screen',
              style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
