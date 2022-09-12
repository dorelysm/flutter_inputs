import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/textfield');
              },
            child: const Text('TextField')),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/form');
              }, 
              child: const Text('TextFormField')),
            ElevatedButton(onPressed: (){}, child: const Text('Autocomplete')),
            ElevatedButton(onPressed: (){}, child: const Text('RawKeyboardListener')),
          ],
        ),
      ),
    );
  }
}