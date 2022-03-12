import 'dart:convert';

import 'package:shelf/shelf.dart';

import '../data/list.dart';

Response getUsers(Request request) {
  return Response.ok(jsonEncode(response));
}
