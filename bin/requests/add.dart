import 'dart:convert';

import 'package:shelf/shelf.dart';

import '../data/list.dart';
import '../data/model.dart';

Future<Response> addUser(Request request) async {
  try {
    var res = request.read();

    var _firstDec = await utf8.decodeStream(res);
    var _decode = jsonDecode(_firstDec);
    var model = Model.fromJson(_decode['addUser']);
    if (model.name == null) {
      return Response.ok('Name cant be empty');
    }
    response.add(model.toJson());
    return Response.ok('Succesful {${model.id}}');
  } catch (e) {
    return Response.ok('error $e');
  }
}
