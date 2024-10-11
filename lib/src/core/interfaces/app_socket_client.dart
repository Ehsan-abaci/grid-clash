import 'package:flutter/foundation.dart';

abstract interface class AppSocketClient{
  late String socketBaseUrl;
  void connect();
  void emit(String e, dynamic data);
  void on(String e, ValueSetter data);
  void off(String e);
  VoidCallback? onConnect;
  ValueSetter? onConnectError;
}