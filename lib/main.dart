import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvc_template/core/injector/services.dart';
import 'package:mvc_template/src/app.dart';

void main() {
  if (kDebugMode) {
    Services.injectDev();
  } else {
    Services.injectProd();
  }

  runApp(const App());
}
