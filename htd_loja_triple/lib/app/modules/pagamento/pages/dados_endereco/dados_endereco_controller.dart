import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../modules/pagamento/models/pagamento_model.dart';
import '../../../../modules/pagamento/stores/pagamento_store.dart';

class DadosEnderecoController extends Disposable {
  final PagamentoStore _pagamentoStore;

  DadosEnderecoController(this._pagamentoStore);

  PagamentoModel get model => _pagamentoStore.pagamento;

  var ruaController = TextEditingController();
  var numeroController = TextEditingController();

  void proximo() {
    model.rua = ruaController.text;
    model.numero = numeroController.text;

    Modular.to.pushNamed("./dadosPagamento", arguments: model);
  }

  @override
  void dispose() {
    ruaController.dispose();
    numeroController.dispose();
  }
}
