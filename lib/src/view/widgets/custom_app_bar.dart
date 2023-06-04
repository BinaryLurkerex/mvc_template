import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Function()? onThemePressed,
  }) : super(
          centerTitle: false,
          title: Text(
            'Home Page',
          ),
          actions: [
            IconButton(
              onPressed: onThemePressed,
              icon: Icon(
                Icons.sunny,
              ),
            ),
          ],
        );
}
