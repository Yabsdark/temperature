import 'package:flutter/material.dart';
import 'package:temperature/classes/grados.dart';


class SextoTab extends StatefulWidget {
  const SextoTab({super.key});

  @override
  State<SextoTab> createState() => _SextoTabState();
}

class _SextoTabState extends State<SextoTab> {
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
                double kelvin = double.parse(_textEditingController.text);
                double fahrenheit = grados.kelvinToFahrenheit(kelvin);
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

