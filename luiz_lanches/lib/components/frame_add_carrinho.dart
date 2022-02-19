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
                height: size.height * 0.6,
                child: Column(
                  children: [
                    // Definindo label de input (Observações)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: const Text(
                              "Observações:",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )),

                        // Definindo   input (Observações)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                child: const TextField(
                                  maxLines: 3,
                                  decoration: InputDecoration.collapsed(
                                    hintText: " ",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                      child: Container(),
                    ),
                    // Definindo área de adicionais
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
