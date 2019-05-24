import 'package:flutter/material.dart';

import '../../book_resource/decription.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import '../common_widgets/text.dart';
import 'app_description.dart';
import 'night_mode_button.dart';
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
    getIsLecturerAudioLoaded();
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

    if (lecturers.length > 0) {
      menuItems.add(Container(
          color: Theme.of(context).highlightColor,
          child: ListTile(
            title: DefaultRussianText(resourceDownloadAllAudio),
          )));
      for (int i = 0; i < lecturers.length; i++) {
        menuItems.add(ListTile(
          contentPadding: EdgeInsets.only(
              left: largePadding,
              top: defaultPadding,
              bottom: defaultPadding,
              right: defaultPadding),
          title: DefaultRussianText(lecturers[i]),
          trailing: Wrap(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.delete),
                color: Theme.of(context).unselectedWidgetColor,
                onPressed: () {
                  setIsLecturerAudioLoaded(i, false);
//                  deleteAllLecturerAudio(i);
                },
              ),
              IconButton(
                icon: Icon(Icons.cloud_download,
                    color: (isLecturersAudioDownloaded[i] == 'false')
                        ? Theme.of(context).unselectedWidgetColor
                        : Theme.of(context).accentColor),
                onPressed: () {
                  setIsLecturerAudioLoaded(i, true);
//                  downloadAllLecturerAudio(i);
                },
              )
            ],
          ),
        ));
        menuItems.add(Divider());
      }
    }

    return menuItems;
  }
}
