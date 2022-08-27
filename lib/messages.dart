import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/message_card.dart';
import 'package:flutter_application_1/pp.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

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
      body: Stack(
        children: [
          ListView(
            children: [...allMessages.map((e) => Mcard(m1: e))],
          ),
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
          ),
        ],
      ),
    );
  }
}
