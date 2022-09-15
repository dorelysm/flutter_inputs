import 'package:flutter/material.dart';

class TextformField extends StatelessWidget {
  const TextformField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(child: Formulario()),
      ),
    );
  }
}

class Formulario extends StatefulWidget {
  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _LoginData _data = _LoginData();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
              decoration: const InputDecoration(
                labelText: 'Ingrese su nombre',
                border: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Ingresa tu nombre';
                }
                return null;
              },
              onSaved: (String? value) {
                _data.nombre = value!;
              }),
          TextFormField(
              decoration: const InputDecoration(
                labelText: 'Ingrese su apellido',
                border: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Ingresa tu apellido';
                }
                return null;
              },
              onSaved: (String? value) {
                _data.apellido = value!;
              }),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();

                  print('nombre: ${_data.nombre}');
                  print('apellido: ${_data.apellido}');
                }
              },
              child: const Text('Enviar'))
        ],
      ),
    );
  }
}

class _LoginData {
  String nombre = '';
  String apellido = '';
}
