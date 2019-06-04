import 'package:educational_audioplayer/loader.dart';
import 'package:flutter/material.dart';

import '../../book_resource/decription.dart';
import '../../ui/common_widgets/text.dart';
import '../../util/constants.dart';
import '../common_widgets/text.dart';
import 'tabs_order.dart';

class AboutAppMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.description),
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

class DeleteAllFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(Icons.delete_forever),
        title: DefaultRussianText(resourceDeleteAllFiles),
        onTap: () {
          deleteAllFiles(context);
        });
  }
}

class TabsOrderMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.reorder),
      title: DefaultRussianText(resourceChooseTabOrder),
      onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => TabsOrderScreen()),
          ),
    );
  }
}
