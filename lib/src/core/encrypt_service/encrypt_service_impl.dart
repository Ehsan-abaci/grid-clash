// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:encrypt/encrypt.dart';
import 'package:flutter/foundation.dart';

import 'package:connect_four/src/core/encrypt_service/encrypt_service.dart';

class EncryptServiceImpl implements EncryptService {
  final Encrypter _encrypter;
  final String _separationKeyName = ':ehsan:';
  final Uint8List _macValue;
  EncryptServiceImpl(Encrypter plugin)
      : _encrypter = plugin,
        _macValue = Uint8List.fromList(utf8.encode('Grid Clash is awesome'));
  @override
  String? decrypt(String storedData) {
    final (encryptedData, ivBase64) = _separateEncrypted(storedData);
    if (encryptedData == null || ivBase64 == null) {
      return null;
    }
    final iv = IV.fromBase64(ivBase64);
    final encrypted = Encrypted.fromBase64(encryptedData);

    return _encrypter.decrypt(
      encrypted,
      iv: iv,
      associatedData: _macValue,
    );
  }

  @override
  String encrypt(String data) {
    final iv = IV.fromSecureRandom(16);
    final encrypted = _encrypter.encrypt(
      data,
      iv: iv,
      associatedData: _macValue,
    );
    final ivBase64 = iv.base64;
    final encryptedData = encrypted.base64;

    return '$encryptedData$_separationKeyName$ivBase64';
  }

  (String?, String?) _separateEncrypted(String encrypted) {
    final parts = encrypted.split(_separationKeyName);
    return (parts.firstOrNull, parts.lastOrNull);
  }
}
