import 'package:flutter/material.dart';
import 'package:temperature/classes/grados.dart';


class SegundoTab extends StatefulWidget {
  const SegundoTab({super.key});

  @override
  State<SegundoTab> createState() => _SegundoTabState();
}

class _SegundoTabState extends State<SegundoTab> {
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
                double kelvin = grados.celsiusToKelvin(celsius);
                String resultado = kelvin.toString();
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

