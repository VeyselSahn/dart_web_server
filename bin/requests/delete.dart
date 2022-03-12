import 'dart:convert';

import 'package:shelf/shelf.dart';

import '../data/list.dart';

Future<Response> deleteUser(Request request) async {
  try {
    Map? _temp;
    var res = request.read();
    var _firstDec = await utf8.decodeStream(res);
    var _decode = jsonDecode(_firstDec);
    for (var item in response) {
      if (item['id'] == _decode['deleteUser']['id']) {
        _temp = item;
        response.remove(item);
        break;
      }
    }
    return (_temp != null) ? Response.ok('Succesful') : Response.ok('Not Found');
  } catch (e) {
    return Response.ok('error $e');
  }
}
