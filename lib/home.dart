// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/card.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/messages.dart';
import 'package:flutter_application_1/pp.dart';
import 'consts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.search),),
        actions: [
          IconButton(
            icon: iconmail,
            onPressed: () {
              setState(() {
                iconmail = const Icon(CupertinoIcons.envelope_open);
              });
              Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true, builder: (_) => const Messages()));
            },
          ),
          ProfilePicture(
            size: 40,
            image: currentUser.imageurl,
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ListView(children: [...rooms.map((e) => Cards(room: e))]),
          Container(
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.3),
                   Theme.of(context).colorScheme.secondary.withOpacity(0.5)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
