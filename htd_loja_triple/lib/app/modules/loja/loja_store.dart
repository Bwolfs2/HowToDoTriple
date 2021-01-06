import 'package:flutter_triple/flutter_triple.dart';

import '../../shared/stores/auth/auth_view_model.dart';

import 'models/loja_model.dart';
import 'repositories/loja_repository.dart';

class LojaStore extends NotifierStore<Object, List<LojaModel>> {
  final AuthViewModel _authStore;
  final LojaRepository repository;

  LojaStore(this.repository, this._authStore) : super([]) {
    init();
  }

  bool get isLogged => _authStore.isLogged;

  Future init() async {
    setLoading(true);

    await repository.obterLojas().catchError(setError).then(update);

    setLoading(false);
  }
}
