import 'dart:convert';

class ReadingModes {
  final bool? text;
  final bool? image;
  
  ReadingModes({
    this.text,
    this.image,
  });


  ReadingModes copyWith({
    bool? text,
    bool? image,
  }) {
    return ReadingModes(
      text: text ?? this.text,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'image': image,
    };
  }

  factory ReadingModes.fromMap(Map<String, dynamic> map) {
    return ReadingModes(
      text: map['text'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ReadingModes.fromJson(String source) => ReadingModes.fromMap(json.decode(source));

  @override
  String toString() => 'ReadingModes(text: $text, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ReadingModes &&
      other.text == text &&
      other.image == image;
  }

  @override
  int get hashCode => text.hashCode ^ image.hashCode;
}
