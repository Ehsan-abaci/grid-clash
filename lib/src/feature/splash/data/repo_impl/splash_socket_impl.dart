import 'package:connect_four/src/feature/splash/domain/repo/splash_socket_repository.dart';
import 'package:flutter/foundation.dart';

class SplashSocketImpl implements SplashSocketRepo {
  @override
  Future<void> connect(VoidCallback onConnect, {required ValueSetter onError}) {
    // TODO: implement connect
    throw UnimplementedError();
  }

  @override
  Future<void> getPlayerInfo(ValueSetter onData,
      {required ValueSetter onError}) {
    // TODO: implement getPlayerInfo
    throw UnimplementedError();
  }
}
