class MusicTag {
  final int id;
  final String name;

  MusicTag({required this.id, required this.name});

  factory MusicTag.fromJson(Map<String, dynamic> json) => MusicTag(
        id: json['id'],
        name: json['name'],
      );
}

class MusicItem {
  final int id;
  final String title;
  final int durationInSeconds;
  final String coverImageUrl;
  final String musicUrl;
  final List<MusicTag> tags;
  final DateTime createdDate;

  MusicItem({
    required this.id,
    required this.title,
    required this.durationInSeconds,
    required this.coverImageUrl,
    required this.musicUrl,
    required this.tags,
    required this.createdDate,
  });

  factory MusicItem.fromJson(Map<String, dynamic> json) => MusicItem(
        id: json['id'],
        title: json['title'],
        durationInSeconds: json['durationInSeconds'],
        coverImageUrl: json['coverImageUrl'],
        musicUrl: json['musicUrl'],
        tags: (json['tags'] as List).map((e) => MusicTag.fromJson(e)).toList(),
        createdDate: DateTime.parse(json['createdDate']),
      );
}

class MusicListResponse {
  final List<MusicItem> musics;
  final int totalCount;

  MusicListResponse({
    required this.musics,
    required this.totalCount,
  });

  factory MusicListResponse.fromJson(Map<String, dynamic> json) =>
      MusicListResponse(
        musics:
            (json['musics'] as List).map((e) => MusicItem.fromJson(e)).toList(),
        totalCount: json['totalCount'],
      );
}
