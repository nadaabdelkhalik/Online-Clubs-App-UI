import 'package:flutter/cupertino.dart';

class ProfilePicture extends StatelessWidget {
  final double size;
  final String image;
  const ProfilePicture({Key? key, required this.size, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(0.5 * size),
            child: Image.asset(
              image,
              width: size,
              height: size,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
