import 'package:uuid/uuid.dart';

import 'model.dart';

  List<Map<String, dynamic>> response = [
    Model(id: Uuid().v1obj().uuid, name: 'X', age: 11, photoUrl: 'http://xyz.png').toJson(),
    Model(id: Uuid().v1obj().uuid, name: 'Y', age: 22, photoUrl: 'http://abc.png').toJson(),
    Model(id: Uuid().v1obj().uuid, name: 'Z', age: 33, photoUrl: 'http://def.png').toJson(),
    Model(id: Uuid().v1obj().uuid, name: 'A', age: 44, photoUrl: 'http://jkl.png').toJson(),
    Model(id: Uuid().v1obj().uuid, name: 'B', age: 55, photoUrl: 'http://mnr.png').toJson(),
  ];

