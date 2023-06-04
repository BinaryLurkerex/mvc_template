import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvc_template/src/view/injector/services.dart';
import 'package:mvc_template/src/app.dart';

void main() async {
  final GetIt getIt = await Services.inject();
  await getIt.allReady();

  runApp(const App());
}
