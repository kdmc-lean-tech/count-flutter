import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyle = new TextStyle(color: Colors.orange, fontSize: 25);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Flutter'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Click number',
            style: textStyle,
          ),
          Text('$conteo', style: textStyle)
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.orange,
          child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
