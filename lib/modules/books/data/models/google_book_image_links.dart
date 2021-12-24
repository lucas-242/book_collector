import 'dart:convert';

class ImageLinks {
 final  String? smallThumbnail;
  final String? thumbnail;
  
  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });


  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
  }) {
    return ImageLinks(
      smallThumbnail: smallThumbnail ?? this.smallThumbnail,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'smallThumbnail': smallThumbnail,
      'thumbnail': thumbnail,
    };
  }

  factory ImageLinks.fromMap(Map<String, dynamic> map) {
    return ImageLinks(
      smallThumbnail: map['smallThumbnail'],
      thumbnail: map['thumbnail'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageLinks.fromJson(String source) => ImageLinks.fromMap(json.decode(source));

  @override
  String toString() => 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ImageLinks &&
      other.smallThumbnail == smallThumbnail &&
      other.thumbnail == thumbnail;
  }

  @override
  int get hashCode => smallThumbnail.hashCode ^ thumbnail.hashCode;
}
