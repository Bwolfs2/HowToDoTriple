class ProdutoModel {
  final int id;
  final String nome;
  final String descricao;
  final String preco;
  final String imagem;
  final int lojaId;

  ProdutoModel({
    required this.lojaId,
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagem,
  });
}
