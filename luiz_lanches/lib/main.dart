import 'package:flutter/material.dart';
import 'package:luiz_lanches/others/rotas.dart';
import 'package:luiz_lanches/views/tela_inicial.dart';
import 'package:luiz_lanches/views/tela_principal.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // ignore: prefer_const_constructors
        Rotas.home: (context) => TelaInicial(),
        // ignore: prefer_const_constructors
        Rotas.telaprincipal: (context) => TelaPrincipal(),
        // ignore: prefer_const_constructors
      },
    ),
  );
}
