import 'package:flutter/material.dart';

class IMCPage extends StatefulWidget {
  @override
  _IMCPageState createState() => _IMCPageState();
}

class _IMCPageState extends State<IMCPage> {
  double imc = 0.0;
  double alt = 0.0;
  double pes = 0.0;

  void _calcIMC(double a, double p) {
    setState(() {
      imc = p / (a * a);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular IMC"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              new TextField(
                onChanged: (text) {
                  alt = double.parse(text);
                },
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: ' Digite sua altura'),
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              new TextField(
                onChanged: (text) {
                  pes = double.parse(text);
                },
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: ' Digite seu peso'),
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              new Text(
                'Seu IMC é de :',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              new Text(
                '$imc',
                style: Theme.of(context).textTheme.display1,
              ),
              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {
                  _calcIMC(alt, pes);
                },
                child:
                    const Text('Calcular IMC', style: TextStyle(fontSize: 23)),
              ),
              SizedBox(height: 15),
              new Text(
                'Endenda os valores',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              new Text(
                "\n" +
                    "Menor que 18,5 você está abaixo do peso" +
                    "\n" +
                    "\n" +
                    "Entre 18,5 e 24,9 você está no peso ideal" +
                    "\n" +
                    "\n" +
                    "Entre que 25 e 29,9 você está no sobrepeso" +
                    "\n" +
                    "\n" +
                    "30 a 34,9 você está na Obesidade tipo 1" +
                    "\n" +
                    "\n" +
                    "35 e 39,9 você está na Obesidade tipo 2" +
                    "\n" +
                    "\n" +
                    "Maior que 40 você está na Obesidade tipo 3" +
                    "\n",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
