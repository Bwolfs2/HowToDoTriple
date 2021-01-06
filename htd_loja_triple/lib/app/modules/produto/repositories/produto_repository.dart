import 'package:flutter_modular/flutter_modular.dart';

import '../../../modules/produto/models/produto_model.dart';

class ProdutoRepository extends Disposable {
  Future<List<ProdutoModel>> obterProdutos(int idLoja) async {
    await Future.delayed(Duration(seconds: 1));

    return _data.where((element) => element.lojaId == idLoja).toList();
  }

  @override
  void dispose() {}
}

List<ProdutoModel> get _data => [
      ProdutoModel(
          lojaId: 1,
          id: 1,
          nome: "Areia para Gato",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem:
              "https://www.petlove.com.br/images/products/222341/product/Complexo_Vitam%C3%ADnico_Aminomix_Pet_3103532_1.jpg?1586452019"),
      ProdutoModel(
          lojaId: 1,
          id: 2,
          nome: "Brinquedo x",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem:
              "https://www.loyalpetzone.com/wp-content/uploads/2016/06/c-8-selector-dogs_174ea262-945c-4e32-a006-f399b93abdf2.png"),
      ProdutoModel(
          lojaId: 1,
          id: 3,
          nome: "Brinquedo Y",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 1,
          id: 4,
          nome: "Bolinha",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 1,
          id: 5,
          nome: "Raçao umida",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 1,
          id: 6,
          nome: "Catnip",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 2,
          id: 7,
          nome: "Ração Golden",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 2,
          id: 8,
          nome: "Osso",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 2,
          id: 9,
          nome: "Ossinho",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 2,
          id: 10,
          nome: "Pneu Mordedor",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 2,
          id: 11,
          nome: "Roupinha",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 2,
          id: 12,
          nome: "Pedras para Jardim",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 2,
          id: 13,
          nome: "Areia",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 3,
          id: 14,
          nome: "Areia para Gato",
          descricao: "descri",
          preco: "21,99",
          imagem:
              "https://www.petlove.com.br/images/products/222341/product/Complexo_Vitam%C3%ADnico_Aminomix_Pet_3103532_1.jpg?1586452019"),
      ProdutoModel(
          lojaId: 3,
          id: 15,
          nome: "Brinquedo x",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem:
              "https://www.loyalpetzone.com/wp-content/uploads/2016/06/c-8-selector-dogs_174ea262-945c-4e32-a006-f399b93abdf2.png"),
      ProdutoModel(
          lojaId: 3,
          id: 16,
          nome: "Brinquedo Y",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 3,
          id: 17,
          nome: "Bolinha",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 3,
          id: 18,
          nome: "Raçao umida",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 3,
          id: 19,
          nome: "Catnip",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 4,
          id: 21,
          nome: "Ração Golden",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 4,
          id: 22,
          nome: "Osso",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 4,
          id: 23,
          nome: "Ossinho",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 4,
          id: 24,
          nome: "Pneu Mordedor",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 4,
          id: 25,
          nome: "Roupinha",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 4,
          id: 26,
          nome: "Pedras para Jardim",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProdutoModel(
          lojaId: 4,
          id: 27,
          nome: "Areia",
          descricao:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          preco: "21,99",
          imagem: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
    ];
