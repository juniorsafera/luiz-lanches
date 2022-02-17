import 'package:flutter/material.dart';
import 'package:luiz_lanches/components/lista_itens_cardapio.dart';
import 'package:luiz_lanches/controller/controller_tela_inicial.dart';
import 'package:luiz_lanches/data/data_item_cardapio.dart';
import 'package:luiz_lanches/models/item_cardapio.dart';
import 'package:luiz_lanches/others/paleta_cores.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    final size = MediaQuery.of(context).size;
    final itensCardapio = DADOS_ITEM_CARDAPIO.toList();

    // ignore: sized_box_for_whitespace
    return Container(
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
             width: size.width,
            child: Image.asset(
              'assets/logo-top.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: const BoxDecoration(
                color: Paleta.corSecundaria,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
              ),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'HAMBÚRGUER',
                      style: TextStyle(
                          color: Paleta.corPrimaria,
                          fontSize: 24,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  Container(
                    child: ListaItemCardapio(
                      itens: itensCardapio,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
