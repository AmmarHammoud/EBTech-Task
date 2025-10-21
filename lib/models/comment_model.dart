class CommentModel {
  late int id;
  late String commenterName;
  late String commenterAvatar;
  late String content;
  late DateTime time;

  CommentModel.fromJson(Map<String, dynamic> json) {
    id = json['comment_id'];
    commenterName = json['commenter_name'];
    commenterAvatar = json['commenter_avatar'];
    content = json['content'];
    time = DateTime.parse(json['created_at']).toLocal();
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'commenterName': commenterName,
    'commenterAvatar': commenterAvatar,
    'content': content,
    'time': time,
  };
}
