import 'dart:convert';

import 'package:book_collector/core/extensions/extensions.dart';
import 'package:book_collector/core/modules/books/data/models/google_book_access_info.dart';
import 'package:book_collector/core/modules/books/data/models/google_book_sale_info.dart';
import 'package:book_collector/core/modules/books/data/models/google_book_search_info.dart';
import 'package:book_collector/core/modules/books/data/models/google_book_volume_info.dart';
import 'package:book_collector/core/modules/books/domain/domain.dart';

class GoogleBook {
  final String? kind;
  final String id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  GoogleBook({
    this.kind,
    required this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  GoogleBook copyWith({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) {
    return GoogleBook(
      kind: kind ?? this.kind,
      id: id ?? this.id,
      etag: etag ?? this.etag,
      selfLink: selfLink ?? this.selfLink,
      volumeInfo: volumeInfo ?? this.volumeInfo,
      saleInfo: saleInfo ?? this.saleInfo,
      accessInfo: accessInfo ?? this.accessInfo,
      searchInfo: searchInfo ?? this.searchInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'kind': kind,
      'id': id,
      'etag': etag,
      'selfLink': selfLink,
      'volumeInfo': volumeInfo.toMap(),
      'saleInfo': saleInfo?.toMap(),
      'accessInfo': accessInfo?.toMap(),
      'searchInfo': searchInfo?.toMap(),
    };
  }

  factory GoogleBook.fromMap(Map<String, dynamic> map) {
    return GoogleBook(
      kind: map['kind'],
      id: map['id'],
      etag: map['etag'],
      selfLink: map['selfLink'],
      volumeInfo: VolumeInfo.fromMap(map['volumeInfo']),
      saleInfo:
          map['saleInfo'] != null ? SaleInfo.fromMap(map['saleInfo']) : null,
      accessInfo: map['accessInfo'] != null
          ? AccessInfo.fromMap(map['accessInfo'])
          : null,
      searchInfo: map['searchInfo'] != null
          ? SearchInfo.fromMap(map['searchInfo'])
          : null,
    );
  }

  Book toBook() => Book(
      id: this.id,
      authors: this.volumeInfo.authors ?? [],
      categories: this.volumeInfo.categories ?? [],
      originalTitle: this.volumeInfo.title,
      title: this.volumeInfo.title,
      subtitle: this.volumeInfo.subtitle,
      summary: this.volumeInfo.description,
      image: this.volumeInfo.imageLinks?.thumbnail,
      publisher: this.volumeInfo.publisher,
      publishedDate: this.volumeInfo.publishedDate != null
          ? this.volumeInfo.publishedDate.toDateTime()
          : null,
      pages: this.volumeInfo.pageCount,
      averageRating: this.volumeInfo.averageRating,
      ratingsCount: this.volumeInfo.ratingsCount);

  String toJson() => json.encode(toMap());

  factory GoogleBook.fromJson(String source) =>
      GoogleBook.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GoogleBook(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo, searchInfo: $searchInfo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GoogleBook &&
        other.kind == kind &&
        other.id == id &&
        other.etag == etag &&
        other.selfLink == selfLink &&
        other.volumeInfo == volumeInfo &&
        other.saleInfo == saleInfo &&
        other.accessInfo == accessInfo &&
        other.searchInfo == searchInfo;
  }

  @override
  int get hashCode {
    return kind.hashCode ^
        id.hashCode ^
        etag.hashCode ^
        selfLink.hashCode ^
        volumeInfo.hashCode ^
        saleInfo.hashCode ^
        accessInfo.hashCode ^
        searchInfo.hashCode;
  }
}
