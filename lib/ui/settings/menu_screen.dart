import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../util/constants.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  double _russianFontSize = defaultRussianTextSize;
  double _arabicFontSize = defaultArabicTextSize;
  String _russianFont = russianFonts[0];
  String _arabicFont = arabicFonts[0];

  @override
  void initState() {
    super.initState();
    _getSharedPreferences();
  }

  _getSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _russianFontSize =
          (prefs.getDouble(resourceRussianFontSize) ?? defaultRussianTextSize);
      _arabicFontSize =
          (prefs.getDouble(resourceArabicFontSize) ?? defaultArabicTextSize);
      _russianFont = (prefs.getString(resourceRussianFont) ?? russianFonts[0]);
      _arabicFont = (prefs.getString(resourceArabicFont) ?? arabicFonts[0]);
    });
  }

  _setRussianFontSize(double size) async {
    if (fontSizes.contains(size)) {
      _russianFontSize = size;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        prefs.setDouble(resourceRussianFontSize, _russianFontSize);
      });
    }
  }

  _setArabicFontSize(double size) async {
    if (fontSizes.contains(size)) {
      _arabicFontSize = size;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        prefs.setDouble(resourceArabicFontSize, _arabicFontSize);
      });
    }
  }

  _setRussianFont(String font) async {
    if (russianFonts.contains(font)) {
      _russianFont = font;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        prefs.setString(resourceRussianFont, _russianFont);
      });
    }
  }

  _setArabicFont(String font) async {
    if (arabicFonts.contains(font)) {
      _arabicFont = font;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        prefs.setString(resourceArabicFont, _arabicFont);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      PopupMenuButton<double>(
        padding: EdgeInsets.zero,
        initialValue: _russianFontSize,
        onSelected: _setRussianFontSize,
        child: ListTile(title: Text(resourceRussianTextSize)),
        itemBuilder: (BuildContext context) =>
            List<PopupMenuItem<double>>.generate(
                fontSizes.length,
                (i) => PopupMenuItem<double>(
                    value: fontSizes[i],
                    child: Text(
                      resourceRussianBasmala,
                      style: TextStyle(
                          fontSize: fontSizes[i], fontFamily: _russianFont),
                    ))),
      ),
      PopupMenuButton<String>(
        padding: EdgeInsets.zero,
        initialValue: _russianFont,
        onSelected: _setRussianFont,
        child: ListTile(title: Text(resourceRussianTextFont)),
        itemBuilder: (BuildContext context) =>
            List<PopupMenuItem<String>>.generate(
                russianFonts.length,
                (i) => PopupMenuItem<String>(
                    value: russianFonts[i],
                    child: Text(
                      resourceRussianBasmala,
                      style: TextStyle(
                          fontFamily: russianFonts[i],
                          fontSize: _russianFontSize),
                    ))),
      ),
      PopupMenuButton<double>(
        padding: EdgeInsets.zero,
        initialValue: _arabicFontSize,
        onSelected: _setArabicFontSize,
        child: ListTile(title: Text(resourceArabicTextSize)),
        itemBuilder: (BuildContext context) =>
            List<PopupMenuItem<double>>.generate(
                fontSizes.length,
                (i) => PopupMenuItem<double>(
                    value: fontSizes[i],
                    child: Text(
                      resourceArabicBasmala,
                      style: TextStyle(
                          fontSize: fontSizes[i], fontFamily: _arabicFont),
                    ))),
      ),
      PopupMenuButton<String>(
        padding: EdgeInsets.zero,
        initialValue: _arabicFont,
        onSelected: _setArabicFont,
        child: ListTile(title: Text(resourceArabicTextFont)),
        itemBuilder: (BuildContext context) =>
            List<PopupMenuItem<String>>.generate(
                arabicFonts.length,
                (i) => PopupMenuItem<String>(
                    value: arabicFonts[i],
                    child: Text(
                      resourceArabicBasmala,
                      style: TextStyle(
                          fontFamily: arabicFonts[i],
                          fontSize: _arabicFontSize),
                    ))),
      ),
    ]);
  }
}