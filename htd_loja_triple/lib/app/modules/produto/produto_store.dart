import 'package:flutter_triple/flutter_triple.dart';

import '../../shared/stores/auth/auth_store.dart';
import 'models/produto_model.dart';
import 'repositories/produto_repository.dart';

class ProdutoStore extends NotifierStore<Object, List<ProdutoModel>> {
  final AuthStore _authStore;

  final ProdutoRepository repository;
  ProdutoStore(this.repository, String idLoja, this._authStore) : super([]) {
    init(int.parse(idLoja));
  }

  bool get isLogged => _authStore.isLogged;

  Future init(int idLoja) async {
    setLoading(true);
    await repository.obterProdutos(idLoja).catchError(setError).then(update);
    setLoading(false);
  }
}
