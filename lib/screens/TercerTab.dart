import 'package:flutter/material.dart';
import 'package:temperature/classes/Grados.dart';


class TercerTab extends StatefulWidget {
  const TercerTab({super.key});

  @override
  State<TercerTab> createState() => _TercerTabState();
}

class _TercerTabState extends State<TercerTab> {
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
                double fahrenheit = double.parse(_textEditingController.text);
                double celsius = grados.fahrenheitToCelsius(fahrenheit);
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

