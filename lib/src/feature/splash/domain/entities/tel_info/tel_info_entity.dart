import 'package:freezed_annotation/freezed_annotation.dart';

import '../tel_init_data_unsafe/tel_init_data_unsafe_entity.dart';
part 'tel_info_entity.freezed.dart';

@freezed
class TelInfoEntity with _$TelInfoEntity {
  const factory TelInfoEntity({
    required String initData,
    required String platform,
    required TelInitDataUnsafeEntity initDataUnsafe,
  }) = _TelInfoEntity;
}
