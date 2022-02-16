import 'package:flutter/material.dart';
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
    // ignore: sized_box_for_whitespace
    return Container(
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Image.asset(
            'assets/logo-top.png',
            fit: BoxFit.cover,
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
                children: [
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
