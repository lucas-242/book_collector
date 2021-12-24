import 'dart:convert';

class SearchInfo {
  final String? textSnippet;
  SearchInfo({
    this.textSnippet,
  });


  SearchInfo copyWith({
    String? textSnippet,
  }) {
    return SearchInfo(
      textSnippet: textSnippet ?? this.textSnippet,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'textSnippet': textSnippet,
    };
  }

  factory SearchInfo.fromMap(Map<String, dynamic> map) {
    return SearchInfo(
      textSnippet: map['textSnippet'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchInfo.fromJson(String source) => SearchInfo.fromMap(json.decode(source));

  @override
  String toString() => 'SearchInfo(textSnippet: $textSnippet)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SearchInfo &&
      other.textSnippet == textSnippet;
  }

  @override
  int get hashCode => textSnippet.hashCode;
}
