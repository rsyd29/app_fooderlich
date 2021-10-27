import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  // 1. CircleImage has two parameters: imageProvider and imageRadius.
  const CircleImage({
    Key? key,
    this.imageProvider,
    this.imageRadius = 20,
  }) : super(key: key);

  // 2. The imageRadius and imageProvider property declarations.
  final double imageRadius;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    // 3. CircleAvatar is a widget provided by the Material library. It’s defined as a white circle with a radius of imageRadius.
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      // 4. Within the outer circle is another CircleAvatar, which is a smaller circle that includes the user’s profile image. Making the inner circle smaller gives you the white border effect.
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
