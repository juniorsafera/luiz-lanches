// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:luiz_lanches/others/paleta_cores.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Paleta.corPrimaria.withOpacity(0.1),
                Paleta.corSecundaria.withOpacity(0.7),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.asset('assets/logo-top.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            RaisedButton(
              color: Paleta.corSecundaria,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              elevation: 6,
              onPressed: () {},
              // ignore: sized_box_for_whitespace
              child: Container(
                width: size.width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Pedir',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/moto.png',
                      width: 35,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 3,
                  color: Paleta.corPrimaria,
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: 16,
                  height: 3,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: 16,
                  height: 3,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
