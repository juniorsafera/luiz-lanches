import 'package:flutter/material.dart';
import 'package:luiz_lanches/models/carrinho.dart';

class ControllerTelaPrincipal {
  abrirTelaCarrinho(BuildContext context, List<ModelCarrinho> dCarrinho) {
    Navigator.of(context)
        .pushNamed('/telacarrinho', arguments: dCarrinho as ModelCarrinho);
  }
}
