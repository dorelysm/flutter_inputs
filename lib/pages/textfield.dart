import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  String nombre = '';
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Ingrese su nombre',
                border: OutlineInputBorder(),
              )
            ),
            ElevatedButton(onPressed: _saludar, child: const Text('Saludar')),
            Text('Hola $nombre')
          ],
        ),
      )
    );
  }

  void _saludar(){
    String input = _controller.text;

    setState(() {
      nombre = input;
    });
  }
}