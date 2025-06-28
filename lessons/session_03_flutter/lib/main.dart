import 'package:flutter/material.dart';
import 'package:session_03_flutter/Example01.dart';
import 'package:session_03_flutter/Example02.dart';

void main () {
  String appBarTitle = 'Session 03';
runApp(
  MaterialApp(
    home: Scaffold(
      drawer: Drawer(
        child: Text('Hi'),
      ),
      appBar: AppBar(
        title: Text('This is $appBarTitle',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          )
        ),
        leading: Icon(
          Icons.abc
        ),
        actions: [
          Icon(Icons.access_alarm),
          Icon(Icons.accessibility)
        ],
      ),
      body: Example02(),
    //bottomNavigationBar: BottomNavigationBar(items: []),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.add),
      ),
    ),
  )
);
}