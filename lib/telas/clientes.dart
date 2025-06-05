import 'package:flutter/material.dart';

class Clientes extends StatelessWidget {
  const Clientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // fundo branco
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Clientes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título com ícone
            Row(
              children: [
                Icon(Icons.people, color: Colors.pink, size: 32),
                SizedBox(width: 8),
                Text(
                  'Clientes',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            // Ícones com nomes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _criarLogoCliente('images/facebook.png', 'FACEBOOK'),
                _criarLogoCliente('images/whatsapp.png', 'WHATSAPP'),
                _criarLogoCliente('images/google.png', 'GOOGLE'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _criarLogoCliente(String caminhoImagem, String nome) {
    return Column(
      children: [
        Image.asset(
          caminhoImagem,
          width: 60,
          height: 60,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 8),
        Text(nome),
      ],
    );
  }
}

