import 'package:flutter/material.dart';

import '../../util/constants.dart';

class DividedContainer extends StatelessWidget {
  final Widget child;
  DividedContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: chapterHeaderBorderSize)),
        ),
        child: child);
  }
}
