import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'book_resource/decription.dart';
import 'ui/book_screen.dart';
import 'util/custom_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final a = CustomIcons;
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
            accentColor: accentColor,
            unselectedWidgetColor: secondaryTextColor),
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
