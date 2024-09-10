import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/src/core/theme/fonts.dart';
import 'package:instagram_clone/src/model/post.dart';
import 'package:instagram_clone/src/view/widgets/custom_icon_button.dart';
import 'package:instagram_clone/src/view/widgets/custom_profile.dart';
import 'package:instagram_clone/src/view/widgets/like_button.dart';

class CustomPost extends StatefulWidget {
  final Post postData;

  const CustomPost({super.key, required this.postData});

  @override
  State<CustomPost> createState() => _CustomPostState();
}

class _CustomPostState extends State<CustomPost> {
  bool isLiked = false;
  
  @override
  void initState() {
    isLiked = widget.postData.usersLikes.contains(widget.postData.profile.username);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomProfile(isPost: true, photoPath: widget.postData.profile.imageUrl),
                  const SizedBox(width: 7),
                  _buildUserInfoInPost(),
                ],
              ),
              CustomIconButton(
                iconSvgPath: 'assets/images/dark_mode/icons/more.svg',
                onPressed: () {},
              )
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: _toggleLike,
          child: Image.network(
            widget.postData.postImageUrl,
            fit: BoxFit.fitHeight,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null)  return child;
              return Container(
                height: 300,
                alignment: Alignment.center,
                child: const CupertinoActivityIndicator(),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                LikeButton(isLiked: isLiked, onPressed: _toggleLike),
                CustomIconButton(iconSvgPath: 'assets/images/dark_mode/icons/comment.svg', onPressed: () {}),
                CustomIconButton(iconSvgPath: 'assets/images/dark_mode/icons/share.svg', onPressed: () {}),
              ],
            ),
            CustomIconButton(iconSvgPath: 'assets/images/dark_mode/icons/bookmark.svg', onPressed: () {}),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(widget.postData.textContent, style: postContentStyle, maxLines: 2, overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(height: 15)
      ],
    );
  }
  
  Widget _buildUserInfoInPost() {
    return widget.postData.infoPost != null
      ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.postData.profile.username, style: usernamePostStyle),
          Text(widget.postData.infoPost!, style: infoPostStyle,),
        ],
      )
      : Text(widget.postData.profile.username, style: usernamePostStyle);
  }

  void _toggleLike() => setState(() => isLiked = !isLiked);
}
