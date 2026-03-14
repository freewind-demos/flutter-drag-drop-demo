// Flutter 拖拽
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Draggable(
          data: 'Drag me',
          feedback: Material(child: Icon(Icons.drag_indicator)),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(child: Text('Drag me')),
          ),
        ),
      ),
    );
  }
}
