import 'package:flutter/material.dart';
import 'package:flutter_you_app/pages/init_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You App',
      debugShowCheckedModeBanner: false,
      home: InitPage(),
    );
  }
}