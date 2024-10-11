import 'package:web_socket_client/web_socket_client.dart';
import 'package:connect_four/src/core/interfaces/app_socket_client.dart';
import 'package:flutter/foundation.dart';

class AppSocketClientImpl implements AppSocketClient {
  late final WebSocket _socket;
  @override
  String socketBaseUrl;

  AppSocketClientImpl(this.socketBaseUrl);

  @override
  VoidCallback? onConnect;

  @override
  ValueSetter? onConnectError;

  @override
  void connect() {
    final uri = Uri.parse('ws://192.168.52.1:8000/ws');
    const backoff = ConstantBackoff(Duration(seconds: 1));
    _socket = WebSocket(uri, backoff: backoff);

    _socket.connection.listen(
      (state) {
        if (state is Connected || state is Reconnected) {
          onConnect?.call();
        }
      },
      onError: onConnectError?.call,
    );
  }

  @override
  void emit(String e, data) {
    // TODO: implement emit
  }

  @override
  void off(String e) {
    // TODO: implement off
  }

  @override
  void on(String e, ValueSetter data) {
    // TODO: implement on
  }
}
