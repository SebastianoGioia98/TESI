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
              Mybottom(),
              Mybottom(),
              Mybottom(),
              Mybottom(),
          ],
          ),
           floatingActionButton: Theme(
            data: Theme.of(context).copyWith(
                  colorScheme:Theme.of(context).colorScheme.copyWith(secondary: Colors.lightBlue),
                 ),
                child: FloatingActionButton(
                  onPressed: null,
                    child: Icon(Icons.add),
                ),
           ),
        ),
      ),
    );
  }
}
class Mybottom extends StatelessWidget {
  Mybottom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: const Text('Notifications'),
        onPressed: () {
          Scaffold.of(context).showBottomSheet<void>(
                (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.blueAccent,
                child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Notifications history'),
                      RaisedButton(
                        child: const Text('Close notifications window'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}