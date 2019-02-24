import 'package:flutter/material.dart';

import '../../util/constants.dart';
import 'night_mode_button.dart';
import 'tabs_order_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(resourceSettings),
          actions: <Widget>[
            NigthModeButton(),
          ],
        ),
        body: ListView(children: <Widget>[
          OutlineButton(
            padding: EdgeInsets.all(buttonEdgeInset),
            child: Text(
              resourceChooseTabOrder,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: defaultRussianFontSize),
            ),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => TabsOrderScreen()),
                ),
          )
        ]));
  }
}
