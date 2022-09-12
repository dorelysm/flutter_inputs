import 'package:flutter/material.dart';
import 'package:form/pages/textfield.dart';
import 'package:form/pages/textformfield.dart';

import 'menu.dart';

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
      },
    );
  }
}