class Note {
  final int? id;
  final String title;
  final String content;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final String? color;
  final String? tags;

  Note({
    this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.modifiedAt,
    this.color,
    this.tags,
  });

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map["id"] as int,
      title: map["title"] as String,
      content: map["content"] as String,
      createdAt: DateTime.parse(map["created_at"]),
      modifiedAt: DateTime.parse(map["modified_at"]),
      color: map["color"],
      tags: map["tags"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'created_at': createdAt.toIso8601String(),
      'modified_at': modifiedAt.toIso8601String(),
      'color': color,
      'tags': tags,
    };
  }
}
