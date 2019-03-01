import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'book_resource/book.dart';
import 'ui/book/book_screen.dart';
import 'util/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
            primarySwatch: primaryColor,
            brightness: brightness,
            accentColor: primaryColor),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: bookTitle,
            theme: theme,
            home: BookScreen(title: bookTitle),
          );
        });
  }
}
