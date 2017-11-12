import 'dart:convert';
import 'dart:core';
import 'dart:async';
import 'dart:html';

import 'package:support_manager/services/models/LoginRequest.dart';

class ClientRPC {

  String uri = "http://127.0.0.1:3000";

  ClientRPC();

  void doLogin(String userId, String password) {
    LoginRequest loginRequest = new LoginRequest()..UserId=userId..Password=password;
    callRPC("Login.DoLogin", params: loginRequest);
  }

  Future<Null> callRPC (String method, {params: const []}) async {
    HttpRequest request = new HttpRequest();
    request.open("POST", uri);
    request.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');

    Completer c = new Completer();
    request.onReadyStateChange.listen((_) {
      if (request.readyState == 4) {
        switch (request.status) {
          case 200:
            c.complete(request);
            break;

          case 204:
            c.complete(request);
            break;

          default:
            c.completeError("omgerror");
        }
      }
    });

    final payload = JSON.encode({
      'jsonrpc': "2.0",
      'method': method,
      'params': [params],
      'id': 1
    });

    request.send(payload);
    c.future.then((HttpRequest request){
      print(request.responseText);
    });
  }
}