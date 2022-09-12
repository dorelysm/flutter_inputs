import 'package:flutter/material.dart';

class Auto extends StatefulWidget {
  @override
  State<Auto> createState() => _AutoState();
}

class _AutoState extends State<Auto> {
    String? _selected;

  final List<String> _sugerencias = [
    'Lunes',
    'Martes',
    'Miercoles',
    'Jueves',
    'Viernes',
    'Sabado',
    'Domingo',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autocomplete'),
      ),
      body: Column(
        children: [
          Autocomplete<String>(
            optionsBuilder: (TextEditingValue value){
              if (value.text.isEmpty){
                return[];
              }
              return _sugerencias.where((sugerencia) => sugerencia.toLowerCase().contains(value.text.toLowerCase()));
            },
            onSelected: (value){
              setState(() {
                _selected = value;
              });
            },
            ),
            Text('Has seleccionado $_selected'),
        ],
      ),
    );
  }
}