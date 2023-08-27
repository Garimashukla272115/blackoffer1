import 'package:flutter/material.dart';
import 'package:otp/following.dart';
import 'package:otp/for_you_video.dart';
import 'package:otp/profile.dart';
import 'package:otp/search.dart';
import 'package:otp/upload_Video.dart';


import 'Upload_Custom_Icon.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  int screenIndex=0;
  List ScreenList=
  [
    ForYou(),
    Search(),
    UploadVideoScreen(),
    Following(),
    Profile(),





    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index)
        {
             setState(() {
               screenIndex=index;
             });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.pink.shade100,

        currentIndex: screenIndex,
        items:const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 30,),
            label: 'home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search,size: 30,),
              label: 'Discover'
          ),

          BottomNavigationBarItem(
              icon: UploadCustomIcon(),
              label: ''
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.inbox_sharp,size: 30,),
              label: 'Following'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 30,),
              label: 'Me'
          )
        ],

      ),

      body: ScreenList[screenIndex],
      appBar: AppBar(
        title: Text( ""),
        backgroundColor: Colors.pink.shade50,
      ),
    );
  }
}
