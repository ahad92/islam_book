import 'package:educational_audioplayer/loader.dart';
import 'package:flutter/material.dart';

import '../../ui/common_widgets/text.dart';
import '../../util/constants.dart';

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
