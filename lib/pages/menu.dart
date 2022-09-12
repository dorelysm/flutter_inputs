import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Inputs en Flutter',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/auto');
              }, 
              child: const Text('Autocomplete')),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/key');
              }, 
              child: const Text('RawKeyboardListener')),
            ],
          ),
        ),
      ),
    );
  }
}