import 'package:counter/src/pages/counter_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: CounterPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
