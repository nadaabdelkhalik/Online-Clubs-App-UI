import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pp.dart';

class RoomPP extends StatelessWidget {
  final String roomimage;
  // ignore: prefer_typing_uninitialized_variables
  final comer;
  // ignore: prefer_typing_uninitialized_variables
  final muted;

  const RoomPP({
    Key? key,
    required this.roomimage,
    required this.comer,
    required this.muted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      child: Stack(
        children: [
          ProfilePicture(size: 100, image: roomimage),
          if (comer)
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(3),
                child: const CircleAvatar(
                  
                  child: Text("🎉"),
                ),
              ),
            ),
          if (muted)
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  child: const CircleAvatar(
                    
                    child:  Icon(
                      CupertinoIcons.mic_off,
                      color: Colors.black,
                    ),
                  ),
                ))
        ],
      ),
    );
  }
}
