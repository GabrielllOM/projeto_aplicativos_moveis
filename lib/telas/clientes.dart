import 'package:flutter/material.dart';

class Clientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clientes')),
      body: Center(
        child: Text('Lista de clientes.', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
