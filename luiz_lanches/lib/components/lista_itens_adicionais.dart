import 'package:flutter/material.dart';
import 'package:luiz_lanches/models/item_adicional.dart';

class ListaItensAdicionais extends StatefulWidget {
  final List<ModelItemAdicional> itensAdicionais;
  const ListaItensAdicionais({
    Key? key,
    required this.itensAdicionais,
  }) : super(key: key);

  @override
  State<ListaItensAdicionais> createState() => _ListaItensAdicionaisState();
}

class _ListaItensAdicionaisState extends State<ListaItensAdicionais> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool checkMarcado = false;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.3,
      child: Container(
        child: ListView.builder(
          itemCount: widget.itensAdicionais.length,
          itemBuilder: (context, index) {
            final _itens = widget.itensAdicionais[index];
            return Column(
              children: [
                Material(
                  child: ListTile(
                    leading: Checkbox(
                      value: checkMarcado,
                      onChanged: (bool? value) {
                        setState(() {
                          checkMarcado = value!;
                        });
                      },
                    ),
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
