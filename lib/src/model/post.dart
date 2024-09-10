import 'package:instagram_clone/src/model/profile.dart';

class Post {
  final Profile profile;
  ///Localização ou 'Patriocinado'
  final String? infoPost;  
  final String postImageUrl;
  final String textContent;
  final List<String> usersLikes;

  Post({
    required this.profile,
    this.infoPost,
    required this.postImageUrl,
    required this.textContent,
    required this.usersLikes,
  });

  void toggleLike() {

  }
}

