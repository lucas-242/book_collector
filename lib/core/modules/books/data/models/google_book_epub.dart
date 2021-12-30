import 'dart:convert';

class Epub {
  final bool isAvailable;
  
  Epub({
    required this.isAvailable,
  });



  Epub copyWith({
    bool? isAvailable,
  }) {
    return Epub(
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isAvailable': isAvailable,
    };
  }

  factory Epub.fromMap(Map<String, dynamic> map) {
    return Epub(
      isAvailable: map['isAvailable'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Epub.fromJson(String source) => Epub.fromMap(json.decode(source));

  @override
  String toString() => 'Epub(isAvailable: $isAvailable)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Epub &&
      other.isAvailable == isAvailable;
  }

  @override
  int get hashCode => isAvailable.hashCode;
}
