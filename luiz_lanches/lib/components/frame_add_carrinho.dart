
import 'package:flutter/material.dart';
import 'package:luiz_lanches/components/lista_itens_adicionais.dart';
import 'package:luiz_lanches/data/data_item_adicional.dart';
import 'package:luiz_lanches/others/paleta_cores.dart';

class FrameAddCarrinho {
  final _itensAdicionais = DADOS_ITENS_ADICIONAIS.toList();

  // ignore: non_constant_identifier_names
  void FrameAddItem(BuildContext context, String itemTitulo, String valor) {
    final size = MediaQuery.of(context).size;
    showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
              title: Center(
                  child: Text('Adicionar ${itemTitulo}  R\$ ${valor},00')),
              content: SizedBox(
                height: size.height * 0.5,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Adicionais',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListaItensAdicionais(
                      itensAdicionais: _itensAdicionais,
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  color: Paleta.corPrimaria,
                  onPressed: () {},
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                FlatButton(onPressed: () {}, child: const Text('Adicionar')),
              ],
            ));
  }
}
