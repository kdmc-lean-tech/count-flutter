import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(color: Colors.orange, fontSize: 25);
  int _count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text('Counter Flutter'),
      centerTitle: true,
      backgroundColor: Colors.orange,
    );
  }

  Widget _body() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Click number',
          style: _textStyle,
        ),
        Text('$_count', style: _textStyle)
      ],
    ));
  }

  Widget _button(IconData icon, MaterialColor color, callback) {
    return FloatingActionButton(
      onPressed: callback,
      child: Icon(icon),
      backgroundColor: color,
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30),
        _button(Icons.exposure_zero, Colors.orange, _reset),
        Expanded(child: SizedBox()),
        _button(Icons.remove, Colors.orange, _subtract),
        SizedBox(
          width: 5,
        ),
        _button(Icons.add, Colors.orange, _add)
      ],
    );
  }

  void _add() {
    setState(() {
      if (_count < 100) {
        _count++;
      }
    });
  }

  void _subtract() {
    setState(() {
      if (_count > 0) {
        _count--;
      }
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }
}
