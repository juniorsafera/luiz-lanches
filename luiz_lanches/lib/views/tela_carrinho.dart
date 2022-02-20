import 'package:flutter/material.dart';
import 'package:luiz_lanches/models/carrinho.dart';

class TelaCarrinho extends StatefulWidget {
  const TelaCarrinho({
    Key? key,
  }) : super(key: key);

  @override
  State<TelaCarrinho> createState() => _TelaCarrinhoState();
}

class _TelaCarrinhoState extends State<TelaCarrinho> {
  @override
  Widget build(BuildContext context) {
    final dCarrinho =
        ModalRoute.of(context)!.settings.arguments as ModelCarrinho;
    return Scaffold(
      appBar: AppBar(
        title: Text('dCarrinho.nomeCliente'),
      ),
      body: Column(
        children: [Text('dCarrinho.bairro')],
      ),
    );
  }
}
