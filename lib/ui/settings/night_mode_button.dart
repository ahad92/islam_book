import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

import '../../util/custom_icons.dart';

class NigthModeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(CustomIcons.moon_inv),
      onPressed: () {
//      It is possible to change whole theme https://github.com/Norbert515/dynamic_theme
        DynamicTheme.of(context).setBrightness(
            Theme.of(context).brightness == Brightness.dark
                ? Brightness.light
                : Brightness.dark);
      },
    );
  }
}
