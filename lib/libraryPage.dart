import 'dart:ffi';

import 'package:exam3/components/TextIcon.dart';
import 'package:exam3/components/shorts_video.dart';
import 'package:flutter/material.dart';

import 'components/top_logo.dart';
class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopLogo(),

          Padding(
            padding: const EdgeInsets.only(right: 330),
            child: Text("Recent",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
          ),
            ShortsVideo(),
      Lib(icon:"assets/hist.png" , text: "History"),
    Lib(icon: "assets/videoo.png", text: "Your video"),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Lib(icon: "assets/download.png", text: "Download"),
                    Lib(icon: "assets/done.png", text: "")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("67 videos",style: TextStyle(color: Colors.grey),),
                )
              ],
            ),
            Lib(icon: "assets/movie.jpg", text: "You movie"),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Lib(icon: "assets/later.png", text: "Watch later"),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("4 unwatched videos",style: TextStyle(color: Colors.grey),),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Divider(thickness: 1,),
            ),
            Padding(padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text("Playlists",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              Spacer(flex: 1,),
              Text("Recently added",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/arrdow.png"),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ],
            ),
            ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 20,top: 33),
              child: InkWell(
              child: Icon(Icons.add,color: Colors.blue,),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 23,top: 33),
              child: Text("New Playlist",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.blue),),
            )
          ],
        ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Lib(icon: "assets/likedvideo.png", text: "Liked Videos"),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("50 videos",style: TextStyle(color: Colors.grey),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
