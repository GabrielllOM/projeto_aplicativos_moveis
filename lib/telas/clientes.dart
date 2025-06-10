import 'package:flutter/material.dart';

class Clientes extends StatelessWidget {
  const Clientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,                    // fundo branco
      appBar: AppBar(
        backgroundColor: Colors.pink,                  // barra rosa
        foregroundColor: Colors.white,                 // seta + título brancos
        title: const Text('Clientes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ícone grande + título rosa
            Row(
              children: const [
                Icon(Icons.people, color: Colors.pink, size: 60),
                SizedBox(width: 12),
                Text(
                  'Clientes',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,                // texto rosa
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            // Ícones com nomes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _logoCliente('images/facebook.png', 'FACEBOOK'),
                _logoCliente('images/whatsapp.png', 'WHATSAPP'),
                _logoCliente('images/google.png', 'GOOGLE'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper para criar cada logo
  static Widget _logoCliente(String caminhoImagem, String nome) {
    return Column(
      children: [
        Image.asset(
          caminhoImagem,
          width: 60,
          height: 60,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          nome,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

