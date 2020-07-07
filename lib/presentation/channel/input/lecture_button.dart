import "package:circles_app/circles_localization.dart";
import "package:circles_app/domain/redux/app_state.dart";
import "package:circles_app/domain/redux/attachment/attachment_actions.dart";
import "package:circles_app/presentation/common/platform_alerts.dart";
import "package:circles_app/routes.dart";
import "package:circles_app/theme.dart";
import "package:circles_app/util/permissions.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import 'package:flutter_ion/flutter_ion.dart';
import "package:flutter_redux/flutter_redux.dart";
import "package:image_picker/image_picker.dart";

class LectureButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(16),
      icon: Icon(Icons.camera),
      onPressed: () async {
        var url = 'http://192.168.0.129:8443/ws';
        Client client = Client(url);
        await client.connect();
      },
    );
  }

}
