import 'package:flutter/material.dart';

extension ToHeight on int {
  Widget get toHeight {
    return SizedBox(
      height: toDouble(),
    );
  }
}

extension ToWidth on int {
  Widget get toWidth {
    return SizedBox(
      width: toDouble(),
    );
  }
}
