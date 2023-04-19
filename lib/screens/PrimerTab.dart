import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:temperature/classes/Grados.dart';

class PrimerTab extends StatefulWidget {
  const PrimerTab({super.key});

  @override
  State<PrimerTab> createState() => _PrimerTabState();
}

class _PrimerTabState extends State<PrimerTab> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Grados grados = new Grados();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convertir grados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: 'Ingrese los grados aquí',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Convertir'),
              onPressed: () {
                double celsius = double.parse(_textEditingController.text);
                double fahrenheit = grados.celsiusToFahrenheit(celsius);
                String resultado = fahrenheit.toString();
                setState(() {
                  _labelGrados = resultado;
                  //_textEditingController.clear();
                });
              },
            ),
            
            SizedBox(height: 20),
            Text(_labelGrados),
          ],
        ),
      ),
    );
  }
}
