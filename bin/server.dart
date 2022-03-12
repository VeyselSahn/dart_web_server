import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

import 'requests/update.dart';
import 'requests/delete.dart';
import 'requests/get.dart';
import 'requests/just_url.dart';
import 'requests/add.dart';

// Configure routes.
final _router = Router()
  ..get('/', justUrlHandler)
  ..get('/get', getUsers)
  ..post('/add', addUser)
  ..post('/update', updateUser)
  ..delete('/delete', deleteUser);

void main(List<String> args) async {
  final ip = InternetAddress.anyIPv4;
  final _handler = Pipeline().addMiddleware(logRequests()).addHandler(_router);
  try {
    final port = int.parse(Platform.environment['PORT'] ?? '4000');
    await serve(_handler, ip, port);
    print('Listen $port');
  } catch (e) {
    print('Error: $e');
    exit(0);
  }
}
