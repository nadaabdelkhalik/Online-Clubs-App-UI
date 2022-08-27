class User {
  final String firstname;
  final String lastname;
  final String imageurl;
  User(
      {required this.firstname,
      required this.lastname,
      required this.imageurl});
}

class Room {
  final String name;
  final String club;
  final List<User> speakers;
  final List<User> others;

  Room(
      {required this.name,
      required this.club,
      required this.speakers,
      required this.others});
}

class Message {
  final String sendername;
  final String senderphoto;
  final String context;
  Message( {required this.sendername, required this.senderphoto, required this.context}); 
}
