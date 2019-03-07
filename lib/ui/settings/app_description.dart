import 'package:flutter/material.dart';

import '../../book_resource/decription.dart';
import '../../util/constants.dart';
import '../common_widgets/text.dart';

class AboutAppMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: DefaultRussianText(resourceAboutAppMenuItem),
      onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                fullscreenDialog: true, builder: (context) => AboutAppScreen()),
          ),
    );
  }
}

class AboutAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(resourceAboutAppMenuItem),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: DefaultRussianText(resourceAboutAppText),
            )
          ],
        ));
  }
}
