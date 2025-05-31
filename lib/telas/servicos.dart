import 'package:flutter/material.dart';

class Servicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Serviços')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.build, size: 100),
            SizedBox(height: 20),
            Text('Aqui estão os serviços oferecidos.', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
