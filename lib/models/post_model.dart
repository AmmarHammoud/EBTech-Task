import 'package:ebtech_task/models/comment_model.dart';

class PostModel {
  late int id;
  late String authorName;
  late String authorAvatar;
  late DateTime time;
  late String title;
  late String content;
  late int commentsCount;
  List<CommentModel> comments = [];

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['post_id'];
    authorName = json['author_name'];
    authorAvatar = json['author_avatar'];
    title = json['title'];
    content = json['content'];
    commentsCount = json['comment_count'];
    time = DateTime.parse(json['created_at']).toLocal();
    for (int i = 0; i < json['comments'].length; i++) {
      comments.add(CommentModel.fromJson(json['comments'][i]));
    }
  }

  Map<String, dynamic> toJson() => {
    'post_id': id,
    'authorName': authorName,
    'authorAvatar': authorAvatar,
    'time': time,
    'title': title,
    'content': content,
    'commentsCount': commentsCount,
  };
}
