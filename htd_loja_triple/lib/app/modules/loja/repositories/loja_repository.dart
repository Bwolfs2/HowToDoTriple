import 'package:flutter_modular/flutter_modular.dart';
import '../../../modules/loja/models/loja_model.dart';

class LojaRepository extends Disposable {
  Future<List<LojaModel>> obterLojas() async {
    await Future.delayed(Duration(seconds: 1));
    //throw Exception("Error");
    print('Chamou');
    return _data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}

get _data => [
      LojaModel(1, "Cat Lovers", "cat_lovers.png"),
      LojaModel(2, "Dog Foods", "dog_foods.png"),
      LojaModel(3, "Pet Lovers", "pet_lovers.png"),
      LojaModel(4, "Pet Shops", "pet_shops.png"),
    ];
