import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../book_resource/decription.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import '../common_widgets/custom_icons.dart';
import '../common_widgets/text.dart';
import 'menu_items.dart';
import 'night_mode_button.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with BookSharedPreferences {
  @override
  void initState() {
    super.initState();
  }

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
        body: ListView(children: getMenuItems()));
  }

  List<Widget> getMenuItems() {
    List<Widget> menuItems = [];
    menuItems.add(Divider());
    menuItems.add(AboutAppMenuItem());
    menuItems.add(Divider());
    menuItems.add(TabsOrderMenuItem());
    menuItems.add(Divider(height: largePadding));
    menuItems.add(DeleteAllFiles());
    menuItems.add(Divider(height: largePadding));

    if (lecturers.length > 0) {
      menuItems.add(Container(
          color: Theme.of(context).highlightColor,
          child: ListTile(
            title: DefaultRussianText(resourceTelegramChannels),
            leading: Icon(CustomIcons.paper_plane_2),
          )));
      for (int i = 0; i < lecturers.length; i++) {
        menuItems.add(ListTile(
          contentPadding: EdgeInsets.only(
              left: largePadding,
              top: defaultPadding,
              bottom: defaultPadding,
              right: defaultPadding),
          title: DefaultRussianText('${lecturers[i]} (${lecture_sources[i]})'),
          subtitle: DefaultRussianText(telegramChannelsNames[i]),
          onTap: () {
            launch(telegramChannelsurls[i]);
          },
        ));
        menuItems.add(Divider());
      }
    }

    return menuItems;
  }
}
