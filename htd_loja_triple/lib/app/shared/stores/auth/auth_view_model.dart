import 'package:flutter/cupertino.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../models/usuario/usuario_model.dart';

@immutable
class AuthViewModel {
  final RxNotifier<UsuarioModel?> _usuario = RxNotifier(null);

  UsuarioModel? get usuario => _usuario.value;

  set usuario(UsuarioModel? value) => _usuario.value = value;

  bool get isLogged => usuario?.email != null && usuario?.senha != null;
}
