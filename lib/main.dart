import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

void main(List<String> args) => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          iconTheme: const IconThemeData(size: 30),
          primarySwatch: Colors.purple,
          
          primaryColor: Colors.purpleAccent,
        ),
        debugShowCheckedModeBanner: false,
        home: const Home());
  }
}
