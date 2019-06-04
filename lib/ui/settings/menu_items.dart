import 'dart:async';
import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:educational_audioplayer/loader.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

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

class FeedbackMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(Icons.feedback),
        title: DefaultRussianText(resourceFeedbackMenuItem),
        onTap: () {
          sendFeedbackEmail();
        });
  }
}

Future sendFeedbackEmail() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  String deviceModel = '';
  String deviceSystemName = '';
  String deviceSystemVersion = '';

  if (Platform.isAndroid) {
    AndroidDeviceInfo deviceInfo = await deviceInfoPlugin.androidInfo;
    deviceSystemName = 'Android';
    deviceSystemVersion = deviceInfo.version.release;
    deviceModel = deviceInfo.model;
  } else if (Platform.isIOS) {
    IosDeviceInfo deviceInfo = await deviceInfoPlugin.iosInfo;
    deviceSystemName = 'iOS';
    deviceSystemVersion = deviceInfo.systemVersion;
    deviceModel = deviceInfo.model;
  }

  String mailBody = '''
  $resourceAppVersion: ${packageInfo.version}\n
  $resourceDeviceSystemName: $deviceSystemName\n
  $resourceDeviceSystemVersion: $deviceSystemVersion\n
  $resourceDeviceModel: $deviceModel\n
  $resourceEnterYurMessage: \n
  ''';
  String url =
      'mailto:$feedbackEmail?subject=${packageInfo.appName}&body=$mailBody';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
