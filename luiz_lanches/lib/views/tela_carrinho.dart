import 'dart:math';

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

   static DadosPedido listaPedidos = DadosPedido();
   static List<ModelPedido> dadosPedidos = [];
  void listarPedidos(){
     
    
     listaPedidos.adicionarPedido('pedido', [], '14');
     print('Carrinho');
  }
  void adicionarPedido(String pedido, List<String> adicionais, String valorTotalItem){
          dadosPedidos.add(
            ModelPedido(codigo: Random().nextDouble().toString(),
            pedido: pedido, 
            adicionais: adicionais, 
            valorTotalItem: valorTotalItem),
            );
            print(dadosPedidos[0].pedido);
             
            
             
    }
  
}

class _TelaCarrinhoState extends State<TelaCarrinho> {
  @override
  Widget build(BuildContext context) {
     
    final ControllerTelaPrincipal cc = ControllerTelaPrincipal();
    final DadosPedido dp = DadosPedido();
    final pedidos = dp.dadosPedidos.toList();
    final List<ModelPedido> dadosPedidos = [];
      

     



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
              child: Text( dadosPedidos.toString()   ),
            ),
            Text('R\$ 25,00')
          ],
        )));
  }
}
