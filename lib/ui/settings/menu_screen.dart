import 'package:flutter/material.dart';

import '../../util/constants.dart';
import 'tabs_order_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      OutlineButton(
        padding: EdgeInsets.all(buttonEdgeInset),
        child: Text(
          resourceChooseTabOrder,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: defaultRussianTextSize),
        ),
        onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => TabsOrderScreen()),
            ),
      )
    ]);
  }
}
