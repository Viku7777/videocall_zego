import 'dart:math';

import 'package:flutter/material.dart';
import 'package:videocall_zego/video_call_preview.dart';

final String localId = Random().nextInt(10000).toString();

class JoinGroupView extends StatefulWidget {
  const JoinGroupView({super.key});

  @override
  State<JoinGroupView> createState() => _JoinGroupViewState();
}

class _JoinGroupViewState extends State<JoinGroupView> {
  TextEditingController joinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                  hintText: "Enter Join Code", border: OutlineInputBorder()),
              controller: joinController,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        VideoCallPreview(callingID: joinController.text),
                  ));
                },
                child: const Text("Join"))
          ],
        ),
      )),
    );
  }
}
