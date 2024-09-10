import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/src/core/theme/colors.dart';

class CustomProfile extends StatelessWidget {
  final String photoPath;
  final bool isPost;

  const CustomProfile({
    super.key,
    required this.photoPath,
    this.isPost = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isPost ? 33 : 67,
      width: isPost ? 33 : 67,
      padding: const EdgeInsets.all(2.4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColorDark,
          width: isPost ? 1.5 : 3.2,
        ),
        color: CupertinoColors.transparent,
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage(photoPath),
      )
    );
  }
}