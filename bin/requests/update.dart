import 'dart:convert';

import 'package:shelf/shelf.dart';

import '../data/list.dart';
import '../data/model.dart';

Future<Response> updateUser(Request request) async {
  try {
    Map? _temp;
    var res = request.read();

    var _firstDec = await utf8.decodeStream(res);
    Map<String, dynamic> _decode = jsonDecode(_firstDec);
    for (var i = 0; i < response.length; i++) {
      if (_decode['updateUser']['id'] == response.elementAt(i)['id']) {
        var newModel = Model.updateUser(_decode['updateUser'], response.elementAt(i));
        response[i] = newModel.toJson();
        _temp = newModel.toJson();
        break;
      }
    }
    return (_temp != null) ? Response.ok('Succesful') : Response.ok('Not Found');
  } catch (e) {
    return Response.ok('error $e');
  }
}
