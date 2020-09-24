import 'package:flutter/material.dart';
import './Home.dart';
import './Login.dart';
import './Work.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedTab = 0;
  final _pageOptions = [
    HomePage(),
    LoginPage(),
    WorkPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.orange,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Allarm System'),
        ),
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
                title: Text('Settings'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('Account'),
            ),
          ],
        ),
      ),
    );
  }
}
