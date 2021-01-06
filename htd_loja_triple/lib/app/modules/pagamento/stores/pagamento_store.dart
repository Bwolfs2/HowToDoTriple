import '../../../modules/pagamento/models/pagamento_model.dart';
import '../../../shared/stores/auth/auth_view_model.dart';

class PagamentoStore {
  late AuthViewModel _authStore;
  PagamentoStore(this._authStore) {
    pagamento = PagamentoModel()..nome = _authStore.usuario?.email;
  }

  late PagamentoModel pagamento;
}
