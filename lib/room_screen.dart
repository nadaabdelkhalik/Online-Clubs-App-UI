import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/models.dart';
import 'package:flutter_application_1/pp.dart';
import 'package:flutter_application_1/room_profileimage.dart';
import 'consts.dart';

class Roomscreen extends StatelessWidget {
  const Roomscreen({Key? key, required this.room1}) : super(key: key);
  final Room room1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
        
          elevation: 0,
          leading: iconsearch,
          actions: [
            ProfilePicture(
              size: 40,
              image: currentUser.imageurl,
            )
          ],
        ),
        body: Container(
            padding: const EdgeInsets.all(4),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height / 2 -
                      4.5 / 10 * MediaQuery.of(context).size.height,
                )),
            child: Stack(
              children: [
                CustomScrollView(slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        room1.name,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  SliverGrid.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    children: [
                      ...room1.speakers.map((e) => RoomPP(
                          roomimage: e.imageurl,
                          comer: Random().nextBool(),
                          muted: Random().nextBool()))
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text(
                        "Followers",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SliverGrid.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    children: [
                      ...room1.others.map((e) => RoomPP(
                          roomimage: e.imageurl,
                          comer: Random().nextBool(),
                          muted: Random().nextBool()))
                    ],
                  )
                ]),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.exit_to_app,
                    
                    ),
                    label: const Text("back"),
                    
                  ),
                )
              ],
            )));
  }
}
