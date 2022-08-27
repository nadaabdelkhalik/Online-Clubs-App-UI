import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/pp.dart';

import 'models.dart';

class Mcard extends StatelessWidget {
  const Mcard({Key? key, required this.m1}) : super(key: key);
  final Message m1;
  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Row(
      
        children: [
          Expanded(child: ProfilePicture(size: 60, image: m1.senderphoto)),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  m1.sendername,
                  style: const  TextStyle(fontSize: 20),
                ),
                Text(m1.context),
              ],
            ),
          ),
          Expanded(child: iconmessage)
        ],
      ),
    );
  }
}
