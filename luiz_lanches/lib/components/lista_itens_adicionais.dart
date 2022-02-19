import 'package:flutter/material.dart';
import 'package:luiz_lanches/models/item_adicional.dart';

class ListaItensAdicionais extends StatelessWidget {
  final List<ModelItemAdicional> itensAdicionais;
  const ListaItensAdicionais({
    Key? key,
    required this.itensAdicionais,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.3,
      child: Container(
        child: ListView.builder(
          itemCount: itensAdicionais.length,
          itemBuilder: (context, index) {
            final _itens = itensAdicionais[index];
            return Column(
              children: [
                Material(
                  child: ListTile(
                    leading: const Text('*'),
                    title: Text(_itens.titulo),
                    trailing: Text('R\$ ${_itens.valor}'),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
