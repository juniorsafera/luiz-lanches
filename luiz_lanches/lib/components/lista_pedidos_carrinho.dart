import 'package:flutter/material.dart';
import 'package:luiz_lanches/models/carrinho.dart';

class ListaPedidos extends StatelessWidget {
  final List<ModelCarrinho> dCarrinho;
  const ListaPedidos({Key? key, required this.dCarrinho}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dCarrinho.length,
      itemBuilder: (context, index) {
        final carrinho = dCarrinho[index];
        return Text(carrinho.nomeCliente);
      },
    );
  }
}
