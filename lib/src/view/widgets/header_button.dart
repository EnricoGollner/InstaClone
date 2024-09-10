import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class HeaderButton extends StatelessWidget {
  final String iconSvgPath;
  final void Function() onPressed;

  const HeaderButton({
    super.key,
    required this.iconSvgPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 22,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: SvgPicture.asset(
        iconSvgPath,
        width: 22,
      ),
    );
  }
}