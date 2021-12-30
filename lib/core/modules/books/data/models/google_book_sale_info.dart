import 'dart:convert';

class SaleInfo {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  
  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });

  SaleInfo copyWith({
    String? country,
    String? saleability,
    bool? isEbook,
  }) {
    return SaleInfo(
      country: country ?? this.country,
      saleability: saleability ?? this.saleability,
      isEbook: isEbook ?? this.isEbook,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
    };
  }

  factory SaleInfo.fromMap(Map<String, dynamic> map) {
    return SaleInfo(
      country: map['country'],
      saleability: map['saleability'],
      isEbook: map['isEbook'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SaleInfo.fromJson(String source) =>
      SaleInfo.fromMap(json.decode(source));

  @override
  String toString() =>
      'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SaleInfo &&
        other.country == country &&
        other.saleability == saleability &&
        other.isEbook == isEbook;
  }

  @override
  int get hashCode =>
      country.hashCode ^ saleability.hashCode ^ isEbook.hashCode;
}
