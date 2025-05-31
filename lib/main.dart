import 'package:flutter/material.dart';
import 'telas/home.dart';
import 'telas/servicos.dart';
import 'telas/clientes.dart';
import 'telas/contato.dart';
import 'telas/bitcoin.dart';
import 'telas/busca_cep.dart';
import 'telas/empresa.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),               // Tela principal
      '/empresa': (context) => TelaEmpresa(),
      '/servicos': (context) => Servicos(),
      '/clientes': (context) => Clientes(),
      '/contato': (context) => Contato(),
      '/buscacep': (context) => BuscaCep(),
      '/bitcoin': (context) => Bitcoin(),

    },
  ));
}
