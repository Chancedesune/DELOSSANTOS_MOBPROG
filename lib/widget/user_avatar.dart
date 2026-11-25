import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String? imagePath;

  const UserAvatar({
    super.key,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.grey[300],
      backgroundImage: imagePath != null
          ? AssetImage(imagePath!)
          : null,
      child: imagePath == null
          ? const Icon(Icons.person, color: Colors.white)
          : null,
    );
  }
}