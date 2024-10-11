

import 'package:connect_four/src/feature/splash/data/data/tel_info/tel_info_mobile.dart'
if (dart.library.js_interop) 'package:connect_four/src/feature/splash/data/data/tel_info/tel_info_web.dart';

import '../../domain/entities/tel_info/tel_info_entity.dart';
abstract class TelegramAppInfo{
  factory TelegramAppInfo() => TelegramInfoImp();

  Future<TelInfoEntity> getTelegramAppInfo();
}
