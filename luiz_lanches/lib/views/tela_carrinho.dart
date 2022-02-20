import 'package:flutter/material.dart';
import 'package:luiz_lanches/components/lista_pedidos_carrinho.dart';
import 'package:luiz_lanches/data/data_carrinho.dart';
import 'package:luiz_lanches/models/carrinho.dart';

class TelaCarrinho extends StatelessWidget {
  const TelaCarrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dadosCarrinho = DADOS_CARRINHO.toList();

    return Scaffold(
        appBar: AppBar(
          title: Text('Carrinho'),
        ),
        body: Container(child: ListaPedidos(dCarrinho: dadosCarrinho)));
  }
}
