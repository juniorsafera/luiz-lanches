import 'package:flutter/material.dart';
import 'package:luiz_lanches/models/carrinho.dart';

class ControllerTelaPrincipal {
  abrirTelaCarrinho(BuildContext context) {
    Navigator.of(context).pushNamed('/telacarrinho');
  }
}
