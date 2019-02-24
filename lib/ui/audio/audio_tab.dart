import 'package:flutter/material.dart';

class AudioList extends StatelessWidget {
  final PageStorageKey key;

  AudioList({this.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      key: key,
    );
  }
}
