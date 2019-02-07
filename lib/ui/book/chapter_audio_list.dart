import 'package:flutter/material.dart';

class AudioList extends StatelessWidget {
  final String keyString;

  AudioList(this.keyString);

  @override
  Widget build(BuildContext context) {
    return ListView(
      key: new PageStorageKey(keyString),
    );
  }
}
