import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class LikeButton extends StatelessWidget {
  final bool isLiked;
  final void Function() onPressed;

  const LikeButton({
    super.key,
    required this.isLiked,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      minSize: 35,
      onPressed: onPressed,
      child: SvgPicture.asset('assets/images/dark_mode/icons/${isLiked ? 'like_filled.svg' : 'like.svg'}', width: 20,),
    );
  }
}