import 'package:flutter/material.dart';
import 'package:luiz_lanches/components/botaoadd.dart';
import 'package:luiz_lanches/models/item_cardapio.dart';
import 'package:luiz_lanches/others/paleta_cores.dart';

class ListaItemCardapio extends StatefulWidget {
  final List<ModelItemCardapio> itens;
  const ListaItemCardapio({
    Key? key,
    required this.itens,
  }) : super(key: key);

  @override
  State<ListaItemCardapio> createState() => _ListaItemCardapioState();
}

class _ListaItemCardapioState extends State<ListaItemCardapio> {
  @override
  Widget build(BuildContext context) {
     

    return Expanded(
      child: ListView.builder(
        itemCount: widget.itens.length,
        itemBuilder: (context, index) {
          final _item = widget.itens[index];
          return Column(
            children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text(
                      _item.titulo,
                      style: const TextStyle(
                        color: Paleta.corPrimaria,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      _item.itens
                          .toString()
                          .replaceAll('[', '')
                          .replaceAll(']', ''),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: BotaoAdd(valor: _item.valor),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
