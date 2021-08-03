import 'package:flutter/material.dart';

class Despesas extends StatefulWidget {
  const Despesas({ Key? key }) : super(key: key);

  @override
  _DespesasState createState() => _DespesasState();
}

class _DespesasState extends State<Despesas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(child: Text('Despesas Body')),
    );
  }
}