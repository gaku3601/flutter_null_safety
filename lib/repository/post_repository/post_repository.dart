import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'post_repository.freezed.dart';
part 'post_repository.g.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    @Default('') String accountName,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

final postRepositoryProvider = Provider.autoDispose((ref) => PostRepository());

class PostRepository {
  PostRepository();

  void create(Post post) {
    print('posted!');
    print(post.toJson());
  }
}
