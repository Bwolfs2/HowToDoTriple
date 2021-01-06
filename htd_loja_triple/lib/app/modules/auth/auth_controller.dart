import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../shared/models/usuario/usuario_model.dart';
import '../../shared/stores/auth/auth_view_model.dart';

class AuthController extends Disposable {
  final AuthViewModel? _authStore;
  AuthController(this._authStore);

  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  void entrar() {
    if (emailController.text.isNotEmpty && senhaController.text.isNotEmpty) {
      _authStore?.usuario =
          UsuarioModel(emailController.text, senhaController.text);
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
