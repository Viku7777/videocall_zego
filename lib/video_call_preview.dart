import 'dart:math';

import 'package:flutter/material.dart';
import 'package:videocall_zego/utils.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final String localId = Random().nextInt(10000).toString();

class VideoCallPreview extends StatelessWidget {
  final String callingID;

  const VideoCallPreview({super.key, required this.callingID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ZegoUIKitPrebuiltCall(
                appID: Utils.appID,
                appSign: Utils.appSignIn,
                callID: callingID,
                userID: localId,
                userName: "Vikrant$localId",
                config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall())));
  }
}
