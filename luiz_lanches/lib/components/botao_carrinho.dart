import 'package:flutter/material.dart';
import 'package:luiz_lanches/others/paleta_cores.dart';

class BotaoCarrinho extends StatelessWidget {
  final String numeroPedidos;
  const BotaoCarrinho({
    Key? key,
    required this.numeroPedidos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/carrinho.png'),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Paleta.corPrimaria,
              ),
              child: Center(
                child: Text(
                  numeroPedidos,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
