import '../../models/pagamento_model.dart';
import '../../stores/pagamento_store.dart';

class PagamentoSucessoController {
  final PagamentoStore _pagamentoStore;

  PagamentoSucessoController(this._pagamentoStore);

  PagamentoModel get model => _pagamentoStore.pagamento;
}
