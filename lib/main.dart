import 'package:flutter/foundation.dart';
import 'package:move_offline/local_storage.dart';
import 'package:move_offline/produto.dart';

late LocalStorage storage;

void main() async {
  storage = await LocalStorageHiveImpl.instance;

  final produtoModel = ProdutoModel(
      id: 1,
      descricao: 'Macbook Pro 16 pol',
      titulo: 'Macbook Pro',
      fotos: ['arquivo.jpg', 'arquivo2.jpg'],
      preco: 10599.99);

  storage.put('Produto', produtoModel.toJson());

  if (kDebugMode) {
    print('Produto inserido >>>>>>>>>>>> ${storage.get('Produto')}');
  }

  // storage.delete('Produto');
}

void atualizarProduto(ProdutoModel produtoModel) {
  produtoModel.descricao = "Macbook Pro M1";

  storage.put('Produto', produtoModel.toJson());

  if (kDebugMode) {
    print('Produto atualizado >>>>>>>>>>>> ${storage.get('Produto')}');
  }
}
