import 'package:flutter/material.dart';

class Rendas extends StatefulWidget {
  const Rendas({ Key? key }) : super(key: key);

  @override
  _RendasState createState() => _RendasState();
}

class _RendasState extends State<Rendas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(child: Text('Rendas Body')),
    );
  }
}