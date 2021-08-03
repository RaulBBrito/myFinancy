import 'package:flutter/material.dart';

class Relatorio extends StatefulWidget {
  const Relatorio({ Key? key }) : super(key: key);

  @override
  _RelatorioState createState() => _RelatorioState();
}

class _RelatorioState extends State<Relatorio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(child: Text('Relatorios Body')),
    );
  }
}