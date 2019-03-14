import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'book_resource/decription.dart';
import 'ui/book/book_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
            canvasColor: brightness == Brightness.dark
                ? canvasColorDark
                : canvasColorLight,
            primarySwatch: primaryColor,
            brightness: brightness,
            accentColor: accentColor),
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
