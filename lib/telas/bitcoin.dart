import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Bitcoin extends StatefulWidget {
  const Bitcoin({super.key});

  @override
  BitcoinState createState() => BitcoinState();
}

class BitcoinState extends State<Bitcoin> {
  String _preco = "0";

  void _recuperarPreco() async {
    var url = Uri.https("blockchain.info", "ticker");
    http.Response response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);

    setState(() {
      _preco = retorno["BRL"]["buy"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Bitcoin"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/bitcoin.png", height: 70),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "Valor do Bitcoin",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "R\$ $_preco",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _recuperarPreco,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                ),
                child: Text("Atualizar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
