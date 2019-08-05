import 'package:flutter/material.dart';

class TemperaturaPage extends StatefulWidget {
  @override
  _TemperaturaPageState createState() => _TemperaturaPageState();
}

class _TemperaturaPageState extends State<TemperaturaPage> {
  double celcius = 0.0;
  double fahrenheit = 0.0;
  double _celToFah = 0.0;
  double _fahToCel = 0.0;

  void _calcCelToFah(double c) {
    setState(() {
      _celToFah = (c * 1.8) + 28;
    });
  }

  void _calcFahToCel(double f) {
    setState(() {
      _fahToCel = (f - 28) / 1.8;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Converter Temperaturas"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              //Celcius To Faherenheit
              new TextField(
                onChanged: (text) {
                  celcius = double.parse(text);
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ' Digite a temperatura em Celcius'),
                style: TextStyle(
                  fontSize: 23,
                ),
              ),

              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {
                  _calcCelToFah(celcius);
                },
                child: const Text('Calcular de Celcius para Fahrenheit',
                    style: TextStyle(fontSize: 20)),
              ),

              new Text(
                'A temperatura que deseja saber é de:',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),

              new Text(
                '$_celToFah ºF',
                style: Theme.of(context).textTheme.display1,
              ),

              SizedBox(
                height: 35,
              ),

              //Fahrenheit To Celcius

              new TextField(
                onChanged: (text) {
                  fahrenheit = double.parse(text);
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ' Digite a temperatura em Fahrenheit'),
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              new Text(
                'A temperatura que deseja saber é de:',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),

              new Text(
                '$_fahToCel ºC',
                style: Theme.of(context).textTheme.display1,
              ),

              const SizedBox(height: 30),

              RaisedButton(
                onPressed: () {
                  _calcFahToCel(fahrenheit);
                },
                child: const Text('Calcular de Fahrenheit para Celcius ',
                    style: TextStyle(fontSize: 20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
