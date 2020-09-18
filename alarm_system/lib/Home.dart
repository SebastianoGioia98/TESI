import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: DefaultTabController(
        length: 4,
        child:Scaffold(
          appBar: TabBar(
               tabs: [
                Tab(text: 'Room 1',
                    icon: Icon(Icons.room_service)),
                Tab(text: 'Room 2',
                    icon: Icon(Icons.room_service)),
                Tab(text: 'Room 3',
                    icon: Icon(Icons.room_service)),
                Tab(text: 'Room 4',
                    icon: Icon(Icons.room_service)),
              ],

          ),
          body: TabBarView(
            children: [
              Icon(Icons.room_service),
              Icon(Icons.room_service),
              Icon(Icons.room_service),
              Icon(Icons.room_service)
            ],
          ),
        ),
      ),
    );
  }
}
