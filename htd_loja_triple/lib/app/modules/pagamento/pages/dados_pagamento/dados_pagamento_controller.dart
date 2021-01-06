import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../modules/pagamento/models/pagamento_model.dart';
import '../../../../modules/pagamento/stores/pagamento_store.dart';

class DadosPagamentoController extends Disposable {
  final PagamentoStore _pagamentoStore;

  DadosPagamentoController(this._pagamentoStore);

  PagamentoModel get model => _pagamentoStore.pagamento;

  var cartaoController = TextEditingController();
  var cvvController = TextEditingController();

  void proximo() {
    model.cartao = cartaoController.text;
    model.cvv = cvvController.text;

    Modular.to.pushNamed("./sucesso", arguments: model);
  }

  @override
  void dispose() {
    cartaoController.dispose();
    cvvController.dispose();
  }
}
