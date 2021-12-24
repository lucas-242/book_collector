import 'dart:convert';

class IndustryIdentifiers {
  final String? type;
  final String? identifier;
  
  IndustryIdentifiers({
    this.type,
    this.identifier,
  });


  IndustryIdentifiers copyWith({
    String? type,
    String? identifier,
  }) {
    return IndustryIdentifiers(
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'identifier': identifier,
    };
  }

  factory IndustryIdentifiers.fromMap(Map<String, dynamic> map) {
    return IndustryIdentifiers(
      type: map['type'],
      identifier: map['identifier'],
    );
  }

  String toJson() => json.encode(toMap());

  factory IndustryIdentifiers.fromJson(String source) => IndustryIdentifiers.fromMap(json.decode(source));

  @override
  String toString() => 'IndustryIdentifiers(type: $type, identifier: $identifier)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is IndustryIdentifiers &&
      other.type == type &&
      other.identifier == identifier;
  }

  @override
  int get hashCode => type.hashCode ^ identifier.hashCode;
}
