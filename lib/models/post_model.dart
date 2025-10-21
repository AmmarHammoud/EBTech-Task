class PostModel {
  late int id;
  late String authorName;
  late String authorAvatar;
  late DateTime time;
  late String title;
  late String content;
  late int commentsCount;

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    authorName = json['author_name'];
    authorAvatar = json['author_avatar'];
    title = json['title'];
    content = json['content'];
    commentsCount = json['comment_count'];
    time = DateTime.parse(json['created_at']);
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'authorName': authorName,
    'authorAvatar': authorAvatar,
    'time': time,
    'title': title,
    'content': content,
    'commentsCount': commentsCount,
  };
}
