import '../../../domain/entities/tel_info/tel_info_entity.dart';
import '../../repo/tel_info_stub.dart';

class TelegramInfoImp implements TelegramAppInfo {
  @override
  Future<TelInfoEntity> getTelegramAppInfo() {
    // TODO: implement getTelegramAppInfo
    print('hello');
    throw UnimplementedError();
  }
}
