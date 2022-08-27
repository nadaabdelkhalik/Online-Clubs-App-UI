import 'package:flutter/material.dart';
import 'package:flutter_application_1/models.dart';
import 'package:flutter_application_1/pp.dart';
import 'package:flutter_application_1/room_screen.dart';

class Cards extends StatelessWidget {
  final Room room;

  const Cards({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            fullscreenDialog: true,
            builder: (_) => Roomscreen(
                  room1: room,
                ))),
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  room.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  room.club,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        child: Stack(
                          children: [
                            Positioned(
                                top: 20,
                                left: 24,
                                child: ProfilePicture(
                                    size: 70, image: room.others[0].imageurl)),
                            ProfilePicture(
                                size: 70, image: room.others[6].imageurl)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...room.speakers
                              .map((e) => Text.rich(TextSpan(children: [
                                    TextSpan(
                                        text: '${e.firstname}  ${e.lastname}'),
                                  ]))),
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: Center(
                              child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(text: "${room.others.length}"),
                                  const WidgetSpan(
                                      child: Icon(
                                    Icons.person,
                                    size: 20,
                                  )),
                                  TextSpan(text: " /${room.speakers.length}"),
                                  const WidgetSpan(
                                      child: Icon(
                                    Icons.speaker_notes,
                                    size: 18,
                                  )),
                                ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
