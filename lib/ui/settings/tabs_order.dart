import 'package:flutter/material.dart';

import '../../book_resource/decription.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import '../../util/default_text.dart';
import '../../util/reorderable_list_simple.dart';

class TabsOrderScreen extends StatefulWidget {
  @override
  _TabsOrderScreenState createState() => _TabsOrderScreenState();
}

class _TabsOrderScreenState extends State<TabsOrderScreen>
    with BookSharedPreferences {
  List<int> tabsOrder = defaultTabsOrder;
  List<ListTile> tabs = [];

  @override
  void initState() {
    super.initState();
    _getSharedPreferences();
  }

  _getSharedPreferences() async {
    setState(() {
      getTabsOrder();
      for (int i = 0; i < resourceTabNames.length; i++) {
        tabs.add(ListTile(
            title: DefaultRussianText(defaultTabsNamesOrder[tabsOrder[i]])));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(resourceDragAndDropTabs),
      ),
      body: ReorderableListSimple(
        allowReordering: true,
        handleIcon: Icon(Icons.reorder),
        children: tabs,
        onReorder: (before, after) {
          ListTile data = tabs[before];
          tabs.removeAt(before);
          tabs.insert(after, data);
          int index = tabsOrder[before];
          tabsOrder.removeAt(before);
          tabsOrder.insert(after, index);
          setTabsOrder();
        },
      ),
    );
  }
}

class TabsOrderMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
