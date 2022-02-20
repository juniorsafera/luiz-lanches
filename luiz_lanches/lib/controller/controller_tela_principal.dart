import 'dart:math';

import 'package:flutter/material.dart';
import 'package:luiz_lanches/data/data_pedido.dart';
import 'package:luiz_lanches/models/carrinho.dart';
import 'package:luiz_lanches/models/pedido.dart';

class ControllerTelaPrincipal {
final dados = DADOS_PEDIDOS.toList();

  abrirTelaCarrinho(BuildContext context) {
    Navigator.of(context).pushNamed('/telacarrinho');
  }

  adicionarPedido(String pedido, List<String> adicionais, String observacao,
      String valorTotalItem) {
    final novoPedido = ModelPedido(
        codigo: Random().nextDouble().toString(),
        pedido: pedido,
        adicionais: adicionais,
        valorTotalItem: valorTotalItem);

    
    dados.add(novoPedido);
    print('OK: ${dados.toList()}');
  }
}
