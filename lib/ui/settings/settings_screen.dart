import 'package:abu_malik_widgets/menu_items.dart';
import 'package:abu_malik_widgets/night_mode_button.dart';
import 'package:abu_malik_widgets/telegram_channel.dart';
import 'package:flutter/material.dart';

import '../../book_resource/decription.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import 'tabs_order.dart';

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
    menuItems.add(TabsOrderMenuItem());
    menuItems.add(Divider());
    menuItems.add(DeleteAllFiles());
    menuItems.add(Divider());
    menuItems.add(ShareMenuItem(
      description: resourceShareApp,
      androidLink: resourceAndroidLink,
      iosLink: resourceIosLink,
    ));
    menuItems.add(Divider());
    menuItems.add(OtherAppsMenuItem(
      androidAppsUrl: resourceAndroidAppsUrl,
      iosAppsUrl: resourceIosAppsUrl,
    ));
    menuItems.add(Divider());
    menuItems.add(AboutAppMenuItem(
      text: resourceAboutAppText,
    ));
    menuItems.add(Divider());
    menuItems.add(FeedbackMenuItem(
      email: feedbackEmail,
    ));
    menuItems.add(Divider());
    menuItems.add(RateAppMenuItem(
      androidAppId: resourceAndroidAppId,
      iosAppId: resourceIosAppId,
    ));
    menuItems.add(Divider());

    if (lecturers.length > 0) {
      menuItems.add(TelegramChannelsHeader());
      for (int i = 0; i < lecturers.length; i++) {
        menuItems.add(TelegramChannelLink(
            title: lecturers[i].lecturer,
            subTitle: lecturers[i].source,
            channelName: lecturers[i].telegramChannel));
        menuItems.add(Divider());
      }
    }

    return menuItems;
  }
}
