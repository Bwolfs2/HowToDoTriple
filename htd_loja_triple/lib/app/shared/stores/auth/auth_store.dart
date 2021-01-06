import '../../../shared/models/usuario/usuario_model.dart';

class AuthStore {
  UsuarioModel? usuario;

  void setUsuario(UsuarioModel value) => usuario = value;

  bool get isLogged => usuario?.email != null && usuario?.senha != null;
}
