import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvc_template/src/controllers/bloc/theme_bloc.dart';
import 'package:mvc_template/src/view/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    final ThemeBloc themeBloc = BlocProvider.of(context);

    return Scaffold(
      appBar: CustomAppBar(),
      body: Placeholder(),
    );
  }
}
