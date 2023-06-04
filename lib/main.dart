import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvc_template/src/app_builder.dart';
import 'package:mvc_template/src/view/injector/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final GetIt getIt = await Services.inject();
  await getIt.allReady();

  runApp(const AppBuilder());
}
