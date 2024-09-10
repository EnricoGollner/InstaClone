import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final String iconSvgPath;
  final void Function() onPressed;

  const CustomIconButton({
    super.key,
    required this.iconSvgPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      minSize: 35,
      onPressed: onPressed,
      child: SvgPicture.asset(
        iconSvgPath,
        width: 22,
      ),
    );
  }
}