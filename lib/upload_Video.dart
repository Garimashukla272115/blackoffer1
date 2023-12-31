import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:otp/videoupload.dart';


class UploadVideoScreen extends StatefulWidget {
  const UploadVideoScreen({super.key});

  @override
  State<UploadVideoScreen> createState() => _UploadVideoScreenState();
}

class _UploadVideoScreenState extends State<UploadVideoScreen> {
  File? galleryFile;
  final picker = ImagePicker();


  getVideoFile(ImageSource sourceImg) async
  {
    final videoFile = await ImagePicker().pickVideo(source:sourceImg);

    if (videoFile !=null){
        Get.to(


        UploadForm(
          videoFile : File(videoFile.path ),
          videoPath: videoFile.path,
        )
        );



    }
  }


  displayDialogBox()
  {
    return showDialog(
        context: context,
        builder: (context)=> SimpleDialog(
          children: [
            SimpleDialogOption(
              onPressed: (){
                getVideoFile(ImageSource.gallery);

              },
              child: Row(
                children: const[
                  Icon(
                    Icons.image,
                  ),
                  Padding(padding: EdgeInsets.all(8),
                    child:Text("post video from gallary"),
                  ),
                ],
              ),
            ),

            SimpleDialogOption(
              onPressed: (){
                getVideoFile(ImageSource.camera);

              },
              child: Row(
                children: const[
                  Icon(
                      Icons.camera_alt,
                  ),
                  Padding(padding: EdgeInsets.all(8),
                  child:Text("Record Video"),
                  ),
                ],
              ),
            ),

            SimpleDialogOption(
              onPressed: (){

              },
              child: Row(
                children: const[
                  Icon(
                    Icons.cancel,
                  ),
                  Padding(padding: EdgeInsets.all(8),
                    child:Text("Cancel"),
                  ),
                ],
              ),
            )

          ],
        ) );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/i1.jpeg",

            ),

            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: ()
                {
                    displayDialogBox();
                },
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent.shade100,
                ),


                child: Text("Upload the video"),
            ),
          ],
        )
      ),
    );
  }
}

