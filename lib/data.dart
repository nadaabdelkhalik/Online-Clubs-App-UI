import 'package:flutter_application_1/models.dart';

final User currentUser =
    User(firstname: "Aya", lastname: "Adel", imageurl: "images/a.jpg");
final List<User> allUsers = [
  User(firstname: "Amira", lastname: "Adel", imageurl: "images/a.jpg"),
  User(firstname: "Alia", lastname: "Ahmed", imageurl: "images/b.jpg"),
  User(firstname: "Hoda", lastname: "Mohamed", imageurl: "images/c.jpg"),
  User(firstname: "Mahitab", lastname: "Yasser", imageurl: "images/a.jpg"),
  User(firstname: "Niara", lastname: "Adel", imageurl: "images/b.jpg"),
  User(firstname: "Amir", lastname: "Gasser", imageurl: "images/c.jpg"),
  User(firstname: "Andro", lastname: "Omar", imageurl: "images/a.jpg"),
  User(firstname: "Fares", lastname: "Amr", imageurl: "images/a.jpg"),
  User(firstname: "Farida", lastname: "Amr", imageurl: "images/c.jpg"),
  User(firstname: "Ebtsam", lastname: "Ahmed", imageurl: "images/b.jpg"),
  User(firstname: "Hoda", lastname: "Omar", imageurl: "images/c.jpg"),
  User(firstname: "Abeer", lastname: "Abdelwahab", imageurl: "images/a.jpg"),
];
final List<Room> rooms = [
  Room(
      name: "Anne",
      club: "Anne with An E Fans",
      speakers: List<User>.from(allUsers).getRange(0, 4).toList()..shuffle(),
      others: List<User>.from(allUsers)..shuffle()),
  Room(
      name: "Hunters",
      club: "HunterXHunter Fans",
      speakers: List<User>.from(allUsers).getRange(0, 5).toList()..shuffle(),
      others: List<User>.from(allUsers)..shuffle()),
  Room(
      name: "Agatha",
      club: "Agatha kirsty Fans Club",
      speakers: List<User>.from(allUsers).getRange(0, 5).toList()..shuffle(),
      others: List<User>.from(allUsers)..shuffle()),
  Room(
      name: "SpyX Family",
      club: "Spy X Family Fans",
      speakers: List<User>.from(allUsers).getRange(0, 5).toList()..shuffle(),
      others: List<User>.from(allUsers)..shuffle()),
  Room(
      name: "Harry",
      club: "Harry Pottter Fans",
      speakers: List<User>.from(allUsers).getRange(0, 6).toList()..shuffle(),
      others: List<User>.from(allUsers)..shuffle()),
  Room(
      name: "Marvel",
      club: "Marvel  Fans Club",
      speakers: List<User>.from(allUsers).getRange(0, 6).toList()..shuffle(),
      others: List<User>.from(allUsers)..shuffle()),
];
List<Message> allMessages = [
  Message(
      sendername: allUsers[0].firstname,
      senderphoto: allUsers[0].imageurl,
      context: "Did You think about it?"),
  Message(
      sendername: allUsers[1].firstname,
      senderphoto: allUsers[1].imageurl,
      context: "You Know I am trying my best😔"),
  Message(
      sendername: allUsers[2].firstname,
      senderphoto: allUsers[2].imageurl,
      context: "😂😂😂😂😂"),
  Message(
      sendername: allUsers[3].firstname,
      senderphoto: allUsers[3].imageurl,
      context: "We are going tommorro,will you join?"),
  Message(
      sendername: allUsers[4].firstname,
      senderphoto: allUsers[4].imageurl,
      context: "yes,I told Maria💕"),
  Message(
      sendername: allUsers[5].firstname,
      senderphoto: allUsers[5].imageurl,
      context: "Every Thing will be okay💜"),
  Message(
      sendername: allUsers[6].firstname,
      senderphoto: allUsers[6].imageurl,
      context: "Why😒?"),
  Message(
      sendername: allUsers[8].firstname,
      senderphoto: allUsers[8].imageurl,
      context: "tomorro?"),
  Message(
      sendername: allUsers[9].firstname,
      senderphoto: allUsers[9].imageurl,
      context: "yup"),
  Message(
      sendername: allUsers[10].firstname,
      senderphoto: allUsers[10].imageurl,
      context: "really?"),
  Message(
      sendername: allUsers[11].firstname,
      senderphoto: allUsers[11].imageurl,
      context: "excited🎉🎈"),
];
