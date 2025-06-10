import 'package:flutter/material.dart';

class Contato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,                     // fundo branco
      appBar: AppBar(
        backgroundColor: Colors.green,                  // barra verde
        foregroundColor: Colors.white,                  // seta + título brancos
        title: const Text('Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ícone grande + título preto
            Row(
              children: const [
                Icon(Icons.email, size: 60, color: Colors.green),
                SizedBox(width: 12),
                Text(
                  'Contato',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,                // texto preto
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            const Text('Email: atendimento@novaroma.edu.br'),
            SizedBox(height: 12),
            const Text('Telefone: (81) xxxx-xxxx'),
            SizedBox(height: 12),
            const Text('Celular: (81) 9xxxx-xxxx'),
          ],
        ),
      ),
    );
  }
}

