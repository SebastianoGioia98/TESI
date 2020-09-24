import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  WorkPage({Key key}) : super(key: key);

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  bool _active1 = false;
  bool _active2 = false;
  bool _active3 = false;
  bool _active4 = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
     children:[SwitchListTile(
          title: const Text('Room 1'),
          value: _active1,
            onChanged: (bool value) {
            setState(() {
          _active1 = value;
        });
      },
      secondary: const Icon(Icons.room_service),
      ),
       SwitchListTile(
         title: const Text('Room 2'),
         value: _active2,
         onChanged: (bool value) {
           setState(() {
             _active2 = value;
           });
         },
         secondary: const Icon(Icons.room_service),
       ),
       SwitchListTile(
         title: const Text('Room 3'),
         value: _active3,
         onChanged: (bool value) {
           setState(() {
             _active3 = value;
           });
         },
         secondary: const Icon(Icons.room_service),
       ),
       SwitchListTile(
         title: const Text('Room 4'),
         value: _active4,
         onChanged: (bool value) {
           setState(() {
             _active4 = value;
           });
         },
         secondary: const Icon(Icons.room_service),
       ),
    ]
    );
  }
}
