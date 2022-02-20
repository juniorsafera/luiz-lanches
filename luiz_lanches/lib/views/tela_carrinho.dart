import 'package:flutter/material.dart';
import 'package:luiz_lanches/components/lista_pedidos.dart';
import 'package:luiz_lanches/components/lista_pedidos_carrinho.dart';
import 'package:luiz_lanches/controller/controller_tela_principal.dart';
import 'package:luiz_lanches/data/data_carrinho.dart';
import 'package:luiz_lanches/data/data_pedido.dart';
import 'package:luiz_lanches/models/carrinho.dart';
import 'package:luiz_lanches/models/pedido.dart';

class TelaCarrinho extends StatefulWidget {
  const TelaCarrinho({Key? key}) : super(key: key);

  @override
  State<TelaCarrinho> createState() => _TelaCarrinhoState();
}

class _TelaCarrinhoState extends State<TelaCarrinho> {
  @override
  Widget build(BuildContext context) {
    final pedidos = DADOS_PEDIDOS.toList();
    final ControllerTelaPrincipal cc = ControllerTelaPrincipal();

    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text('Carrinho'),
        ),
        body: Container(
            child: Column(
          children: [
            Text('Pedidos:'),
            Container(
              width: size.width,
              height: 150,
              color: Colors.grey[200],
              child: Text(cc.dados.length.toString()),
            ),
            Text('R\$ 25,00')
          ],
        )));
  }
}
