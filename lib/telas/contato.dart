import 'package:flutter/material.dart';

class Contato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // fundo branco igual ao do professor
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Contato'),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ícone e título
            Row(
              children: [
                Icon(Icons.email, size: 60, color: Colors.green),
                SizedBox(width: 12),
                Text(
                  'Contato',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text('Email: atendimento@novaroma.edu.br'),
            SizedBox(height: 12),
            Text('Telefone: (81) xxxx-xxxx'),
            SizedBox(height: 12),
            Text('Celular: (81) 9xxxx-xxxx'),
          ],
        ),
      ),
    );
  }
}

