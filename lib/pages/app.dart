import 'package:flutter/material.dart';

import 'textfield.dart';
import 'textformfield.dart';
import 'menu.dart';
import 'auto.dart';
import 'key.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inputs en Flutter',
      home: Center(
        child: Menu(),
      ),
      initialRoute: '/',
      routes: {
        //'/': (context) => Menu(),
        '/textfield': (context) => Textfield(),
        '/form': (context) => const TextformField(),
        '/auto': (context) => const Auto(),
        '/key': (context) => const KeyB(),
      },
    );
  }
}
