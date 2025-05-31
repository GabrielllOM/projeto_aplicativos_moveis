import 'package:flutter/material.dart';

class Contato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contato')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.contact_mail, size: 100),
            SizedBox(height: 20),
            Text('Email: contato@empresa.com', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
