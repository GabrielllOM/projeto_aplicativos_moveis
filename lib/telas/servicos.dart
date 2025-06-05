import 'package:flutter/material.dart';

class Servicos extends StatelessWidget {
  const Servicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.business_center, color: Colors.cyan, size: 50),
                SizedBox(width: 10),
                Text(
                  "Nossos serviços",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            // Aumenta o espaço abaixo do título
            SizedBox(height: 40),

            // Lista com padding à esquerda
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("* Planejamento"),
                  Text("* Auditoria"),
                  Text("* Acompanhamento de projetos"),
                  Text("* Treinamentos"),
                  Text("* Assessoria"),
                  Text("* Consultoria em TI"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




