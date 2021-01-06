import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/models/usuario/usuario_model.dart';
import '../../shared/stores/auth/auth_store.dart';
import 'package:asuka/asuka.dart' as asuka;

class AuthController extends Disposable {
  final AuthStore? _authStore;
  AuthController(this._authStore);

  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  void entrar() {
    if (emailController.text.isNotEmpty && senhaController.text.isNotEmpty) {
      _authStore?.setUsuario(
          UsuarioModel(emailController.text, senhaController.text));
      Modular.to.pushReplacementNamed("/");
    } else {
      asuka.showDialog(
        builder: (context) => AlertDialog(
          content: Text("Voce nao preencheu todos os dados!!!"),
          title: Text("Oppss..."),
        ),
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    senhaController.dispose();
  }
}