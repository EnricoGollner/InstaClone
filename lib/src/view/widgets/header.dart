
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/src/view/widgets/header_button.dart';

class Header extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/images/dark_mode/header-logo-dark.svg', width: 110),
              Row(
                children: [
                  HeaderButton(iconSvgPath: 'assets/images/dark_mode/icons/like.svg', onPressed: () {}),
                  const SizedBox(width: 20),
                  HeaderButton(iconSvgPath: 'assets/images/dark_mode/icons/search.svg', onPressed: () {}),
                ],
              ),
            ],
          ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
