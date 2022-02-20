import 'package:luiz_lanches/models/carrinho.dart';
import 'package:luiz_lanches/models/pedido.dart';

const DADOS_CARRINHO = [
  ModelCarrinho(
      codigo: '001',
      pedidos: [
        ModelPedido(
            codigo: 'p1',
            pedido: 'X-BURGUER',
            adicionais: ['Calabresa', 'Baicon'],
            valorTotalItem: '16,00')
      ],
      tipoPagamento: 'cartao',
      troco: false,
      entrega: false,
      endereco: 'Rua leste',
      numero: '55',
      bairro: 'Planalto',
      contato: '888888888',
      observacao: '',
      valorTotalCarrinho: '')
];
