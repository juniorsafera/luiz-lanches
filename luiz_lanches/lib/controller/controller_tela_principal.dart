import 'dart:math';

import 'package:flutter/material.dart';
import 'package:luiz_lanches/data/data_pedido.dart';
import 'package:luiz_lanches/models/carrinho.dart';
import 'package:luiz_lanches/models/pedido.dart';

class ControllerTelaPrincipal {


  abrirTelaCarrinho(BuildContext context) {
    Navigator.of(context).pushNamed('/telacarrinho');
  }

  
  
}
