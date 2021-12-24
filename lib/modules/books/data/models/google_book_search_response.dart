import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:book_collector/modules/books/data/models/google_book.dart';

/// Represent the response of the Google Book API
class GoogleBookSearchResponse {
  final String kind;
  final List<GoogleBook> items;
  final int totalItems;
  
  GoogleBookSearchResponse({
    required this.kind,
    required this.items,
    required this.totalItems,
  });

  GoogleBookSearchResponse copyWith({
    String? kind,
    List<GoogleBook>? items,
    int? totalItems,
  }) {
    return GoogleBookSearchResponse(
      kind: kind ?? this.kind,
      items: items ?? this.items,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'kind': kind,
      'items': items.map((x) => x.toMap()).toList(),
      'totalItems': totalItems,
    };
  }

  factory GoogleBookSearchResponse.fromMap(Map<String, dynamic> map) {
    return GoogleBookSearchResponse(
      kind: map['kind'] ?? '',
      items: List<GoogleBook>.from(map['items']?.map((x) => GoogleBook.fromMap(x))),
      totalItems: map['totalItems']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory GoogleBookSearchResponse.fromJson(String source) => GoogleBookSearchResponse.fromMap(json.decode(source));

  @override
  String toString() => 'GoogleBookSearchResponse(kind: $kind, items: $items, totalItems: $totalItems)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GoogleBookSearchResponse &&
      other.kind == kind &&
      listEquals(other.items, items) &&
      other.totalItems == totalItems;
  }

  @override
  int get hashCode => kind.hashCode ^ items.hashCode ^ totalItems.hashCode;
}
