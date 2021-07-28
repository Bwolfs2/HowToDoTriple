import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';

class AddressMapper {
  static Map<String, dynamic> toMap(AddressEntity entity) {
    return {
      'id': entity.id,
      'name': entity.name,
      'number': entity.number,
      'complement': entity.complement,
    };
  }

  static AddressEntity fromMap(Map<dynamic, dynamic> map) {
    return AddressEntity(
      map['id'],
      map['name'],
      map['number'],
      map['complement'],
    );
  }
}
