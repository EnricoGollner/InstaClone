
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/src/core/utils/mock.dart';
import 'package:instagram_clone/src/view/widgets/header.dart';
import 'package:instagram_clone/src/view/widgets/custom_post.dart';
import 'package:instagram_clone/src/view/widgets/custom_profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(delegate: Header()),
              CupertinoSliverRefreshControl(onRefresh: () async {
                await Future.delayed(const Duration(seconds: 2));
              }),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 90,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(width: 5),
                    itemCount: Mock.stories.length,
                    itemBuilder: (context, index) => CustomProfile(photoPath:  Mock.stories[index].profile.imageUrl),
                  ),
                ),
              ),
              SliverList.builder(
                itemCount: Mock.posts.length,
                itemBuilder: (context, index) => CustomPost(postData: Mock.posts[index]),
              ),
            ],
          ),
        ), 
      );
  }
}