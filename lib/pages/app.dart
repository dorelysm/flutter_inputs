import 'package:flutter/material.dart';

import 'textfield.dart';
import 'textformfield.dart';
import 'menu.dart';
import 'auto.dart';
import 'key.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Center(child: Menu(),),
      initialRoute: '/',
      routes: {
        //'/': (context) => Menu(),
        '/textfield': (context) => Textfield(),
        '/form':(context) => TextformField(),
        '/auto':(context) => Auto(),
        '/key':(context) => KeyB(),
      },
    );
  }
}