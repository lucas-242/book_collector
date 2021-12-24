import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:book_collector/modules/books/data/models/google_book_image_links.dart';
import 'package:book_collector/modules/books/data/models/google_book_industry_identifiers.dart';
import 'package:book_collector/modules/books/data/models/google_book_ponelization_summary.dart';
import 'package:book_collector/modules/books/data/models/google_book_reading_modes.dart';

class VolumeInfo {
  final String title;
  final String? subtitle;
  final String? description;
  final String? publisher;
  final String? publishedDate;
  final List<IndustryIdentifiers>? industryIdentifiers;
  final ReadingModes? readingModes;
  final String? printType;
  final List<String>? categories;
  final List<String>? authors;
  final int? pageCount;
  final String? maturityRating;
  final double? averageRating;
  final int? ratingsCount;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    this.subtitle,
    this.description,
    this.publisher,
    this.publishedDate,
    required this.industryIdentifiers,
    this.readingModes,
    this.printType,
    required this.categories,
    this.authors,
    this.pageCount,
    this.maturityRating,
    this.averageRating,
    this.ratingsCount,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo copyWith({
    String? title,
    String? subtitle,
    String? description,
    String? publisher,
    String? publishedDate,
    List<IndustryIdentifiers>? industryIdentifiers,
    ReadingModes? readingModes,
    String? printType,
    List<String>? categories,
    List<String>? authors,
    int? pageCount,
    String? maturityRating,
    double? averageRating,
    int? ratingsCount,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) {
    return VolumeInfo(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      description: description ?? this.description,
      publisher: publisher ?? this.publisher,
      publishedDate: publishedDate ?? this.publishedDate,
      industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
      readingModes: readingModes ?? this.readingModes,
      printType: printType ?? this.printType,
      categories: categories ?? this.categories,
      authors: authors ?? this.authors,
      pageCount: pageCount ?? this.pageCount,
      maturityRating: maturityRating ?? this.maturityRating,
      averageRating: averageRating ?? this.averageRating,
      ratingsCount: ratingsCount ?? this.ratingsCount,
      allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
      contentVersion: contentVersion ?? this.contentVersion,
      panelizationSummary: panelizationSummary ?? this.panelizationSummary,
      imageLinks: imageLinks ?? this.imageLinks,
      language: language ?? this.language,
      previewLink: previewLink ?? this.previewLink,
      infoLink: infoLink ?? this.infoLink,
      canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
      'description': description,
      'publisher': publisher,
      'publishedDate': publishedDate,
      'industryIdentifiers':
          industryIdentifiers?.map((x) => x.toMap()).toList(),
      'readingModes': readingModes?.toMap(),
      'printType': printType,
      'categories': categories,
      'authors': authors,
      'pageCount': pageCount,
      'maturityRating': maturityRating,
      'averageRating': averageRating,
      'ratingsCount': ratingsCount,
      'allowAnonLogging': allowAnonLogging,
      'contentVersion': contentVersion,
      'panelizationSummary': panelizationSummary?.toMap(),
      'imageLinks': imageLinks?.toMap(),
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
    };
  }

  factory VolumeInfo.fromMap(Map<String, dynamic> map) {
    return VolumeInfo(
      title: map['title'] ?? '',
      subtitle: map['subtitle'],
      description: map['description'],
      publisher: map['publisher'],
      publishedDate: map['publishedDate'],
      industryIdentifiers: map['industryIdentifiers'] != null
          ? List<IndustryIdentifiers>.from(map['industryIdentifiers']
              ?.map((x) => IndustryIdentifiers.fromMap(x)))
          : null,
      readingModes: map['readingModes'] != null
          ? ReadingModes.fromMap(map['readingModes'])
          : null,
      printType: map['printType'],
      categories: map['categories'] != null
          ? List<String>.from(map['categories'])
          : null,
      authors:
          map['authors'] != null ? List<String>.from(map['authors']) : null,
      pageCount: map['pageCount']?.toInt(),
      maturityRating: map['maturityRating'],
      averageRating: map['averageRating']?.toDouble(),
      ratingsCount: map['ratingsCount']?.toInt(),
      allowAnonLogging: map['allowAnonLogging'],
      contentVersion: map['contentVersion'],
      panelizationSummary: map['panelizationSummary'] != null
          ? PanelizationSummary.fromMap(map['panelizationSummary'])
          : null,
      imageLinks: map['imageLinks'] != null
          ? ImageLinks.fromMap(map['imageLinks'])
          : null,
      language: map['language'],
      previewLink: map['previewLink'],
      infoLink: map['infoLink'],
      canonicalVolumeLink: map['canonicalVolumeLink'],
    );
  }

  String toJson() => json.encode(toMap());

  factory VolumeInfo.fromJson(String source) =>
      VolumeInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'VolumeInfo(title: $title, subtitle: $subtitle, description: $description, publisher: $publisher, publishedDate: $publishedDate, industryIdentifiers: $industryIdentifiers, readingModes: $readingModes, printType: $printType, categories: $categories, authors: $authors, pageCount: $pageCount, maturityRating: $maturityRating, averageRating: $averageRating, ratingsCount: $ratingsCount, allowAnonLogging: $allowAnonLogging, contentVersion: $contentVersion, panelizationSummary: $panelizationSummary, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VolumeInfo &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.description == description &&
        other.publisher == publisher &&
        other.publishedDate == publishedDate &&
        listEquals(other.industryIdentifiers, industryIdentifiers) &&
        other.readingModes == readingModes &&
        other.printType == printType &&
        listEquals(other.categories, categories) &&
        listEquals(other.authors, authors) &&
        other.pageCount == pageCount &&
        other.maturityRating == maturityRating &&
        other.averageRating == averageRating &&
        other.ratingsCount == ratingsCount &&
        other.allowAnonLogging == allowAnonLogging &&
        other.contentVersion == contentVersion &&
        other.panelizationSummary == panelizationSummary &&
        other.imageLinks == imageLinks &&
        other.language == language &&
        other.previewLink == previewLink &&
        other.infoLink == infoLink &&
        other.canonicalVolumeLink == canonicalVolumeLink;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        subtitle.hashCode ^
        description.hashCode ^
        publisher.hashCode ^
        publishedDate.hashCode ^
        industryIdentifiers.hashCode ^
        readingModes.hashCode ^
        printType.hashCode ^
        categories.hashCode ^
        authors.hashCode ^
        pageCount.hashCode ^
        maturityRating.hashCode ^
        averageRating.hashCode ^
        ratingsCount.hashCode ^
        allowAnonLogging.hashCode ^
        contentVersion.hashCode ^
        panelizationSummary.hashCode ^
        imageLinks.hashCode ^
        language.hashCode ^
        previewLink.hashCode ^
        infoLink.hashCode ^
        canonicalVolumeLink.hashCode;
  }
}
