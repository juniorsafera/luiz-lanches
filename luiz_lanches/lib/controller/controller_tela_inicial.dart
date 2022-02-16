import 'package:flutter/material.dart';

class ControllerTelaInicial{
       abrirTelaPrincipal(BuildContext context) {
    Navigator.of(context)
        .pushNamed('/telaprincipal');
  }
}