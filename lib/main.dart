import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: FormularioTransferencia(),
    ));
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
      ),
      body: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration:
                  InputDecoration(
                      labelText: 'Número da conta',
                      hintText: '0000'),
              keyboardType: TextInputType.number,
            ),
          ), Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration:
                  InputDecoration(
                    icon:Icon(Icons.monetization_on),
                      labelText: 'Valor',
                      hintText: '0.00'),
              keyboardType: TextInputType.number,
            ),
          ),

          RaisedButton(
            child: Text('Confirmar')
          ),
        ],
      ),
    );
  }
}

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencias'),
      ),
      body: Column(
        children: <Widget>[
          itemTransferencia(Transferencia(100.0, 1000)),
          itemTransferencia(Transferencia(200.0, 1001)),
          itemTransferencia(Transferencia(300.0, 1002)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class itemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  itemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
