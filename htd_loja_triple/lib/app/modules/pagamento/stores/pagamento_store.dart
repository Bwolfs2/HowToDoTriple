import '../../../modules/pagamento/models/pagamento_model.dart';
import '../../../shared/stores/auth/auth_store.dart';

class PagamentoStore {
  late AuthStore _authStore;
  PagamentoStore(this._authStore) {
    pagamento = PagamentoModel()..nome = _authStore.usuario?.email;
  }

  late PagamentoModel pagamento;
}
