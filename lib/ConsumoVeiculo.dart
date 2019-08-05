import 'package:flutter/material.dart';

class ConsumoVeiculoPage extends StatefulWidget {
  @override
  _ConsumoVeiculoPageState createState() => _ConsumoVeiculoPageState();
}

class _ConsumoVeiculoPageState extends State<ConsumoVeiculoPage> {
  double consumo = 0.0;
  double kmrodado = 0.0;
  double litrosposto = 0.0;

  void _calcConsumo(double k, double l) {
    setState(() {
      consumo = (k / l);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo do veículo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              new TextField(
                onChanged: (text) {
                  kmrodado = double.parse(text);
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:
                        ' Informe o valor do KM rodado desde o último abastecimento '),
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              new TextField(
                onChanged: (text) {
                  litrosposto = double.parse(text);
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ' Informe a quantidade abastecido '),
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              new Text(
                'O consumo médio do veículo é de: ',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              new Text(
                "$consumo",
                style: Theme.of(context).textTheme.display1,
              ),
              RaisedButton(
                onPressed: () {
                  _calcConsumo(kmrodado, litrosposto);
                },
                child: const Text('Calcular o consumo do veículo',
                    style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
