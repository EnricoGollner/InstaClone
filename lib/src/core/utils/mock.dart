import 'package:instagram_clone/src/model/post.dart';
import 'package:instagram_clone/src/model/profile.dart';
import 'package:instagram_clone/src/model/story.dart';

class Mock {
  static List<Profile> get profiles => List.generate(100, (index) {
    return Profile(
      name: 'Nome do Usuário',
      username: index % 2 == 0 ? 'dev1' : 'usuario.performance',
      imageUrl: index % 2 == 0
        ? 'https://images.pexels.com/photos/3007436/pexels-photo-3007436.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
        : 'https://images.pexels.com/photos/3752194/pexels-photo-3752194.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ); 
  });

  static List<Story> get stories => List.generate(100, (index) => Story(
      profile: profiles[index],
      storyImageUrl: 'https://images.pexels.com/photos/12359137/pexels-photo-12359137.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
  );

  static List<Post> get posts => List.generate(
    7,
    (index) {
      return Post(
        usersLikes: index % 2 == 0 ? [] : [profiles[index].username],
        profile: profiles[index],
        infoPost: index % 2 == 0 ? 'Vitória - ES' : null,
        postImageUrl: index % 2 == 0
          ? 'https://images.pexels.com/photos/12359137/pexels-photo-12359137.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
          : 'https://images.pexels.com/photos/17423276/pexels-photo-17423276/free-photo-of-frio-com-frio-bebida-drink.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        textContent: 'Post criado pelo usuário ${profiles[index].name} no dia 10/09/2024 como teste do aplicativo',
      );
    },
  );
}
