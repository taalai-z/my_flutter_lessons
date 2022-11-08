class PostModel {
  final int id;
  final String title;
  final String subtitle;

  PostModel({
    required this.id,
    required this.title,
    required this.subtitle,
  });

  factory PostModel.fromJSON(Map<String, dynamic> data) {
    return PostModel(
      id: data['id'],
      title: data['title'],
      subtitle: data['body'],
    );
  }
}
