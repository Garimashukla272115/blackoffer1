import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class UploadForm extends StatefulWidget {

  final File videoFile;
  final String videoPath;
  const UploadForm({ required this.videoFile, required this.videoPath});

  @override
  State<UploadForm> createState() => _UploadFormState();
}

class _UploadFormState extends State<UploadForm> {
  VideoPlayerController? playerController;

  @override


  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      playerController=VideoPlayerController.file(widget.videoFile);
    });

    playerController!.initialize();
    playerController!.play();
    playerController!.setLooping(true);

  }


  @override

  void dispose()
  {
    super.dispose();
    playerController!.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: VideoPlayer(playerController!),
            )
          ],
        ),
      ),
    );
  }
}
