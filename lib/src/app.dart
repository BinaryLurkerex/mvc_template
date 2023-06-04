import 'package:flutter/material.dart';
import 'package:mvc_template/src/view/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, Widget Function(BuildContext)>{
        HomePage.route: (BuildContext context) => HomePage(),
      },
      initialRoute: HomePage.route,
      theme: ThemeData.from(
        colorScheme: ColorScheme.light(
          primary: Colors.lightBlue,
        ),
        useMaterial3: true,
      ),
    );
  }
}
