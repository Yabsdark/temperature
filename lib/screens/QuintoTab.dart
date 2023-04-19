import 'package:flutter/material.dart';
import 'package:temperature/classes/grados.dart';


class QuintoTab extends StatefulWidget {
  const QuintoTab({super.key});

  @override
  State<QuintoTab> createState() => _QuintoTabState();
}

class _QuintoTabState extends State<QuintoTab> {
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
                double celsius = grados.kelvinToCelsius(kelvin);
                String resultado = celsius.toString();
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

