import 'dart:convert';

import 'package:book_collector/modules/books/data/models/google_book_epub.dart';

class AccessInfo {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Epub? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  AccessInfo copyWith({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Epub? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) {
    return AccessInfo(
      country: country ?? this.country,
      viewability: viewability ?? this.viewability,
      embeddable: embeddable ?? this.embeddable,
      publicDomain: publicDomain ?? this.publicDomain,
      textToSpeechPermission:
          textToSpeechPermission ?? this.textToSpeechPermission,
      epub: epub ?? this.epub,
      pdf: pdf ?? this.pdf,
      webReaderLink: webReaderLink ?? this.webReaderLink,
      accessViewStatus: accessViewStatus ?? this.accessViewStatus,
      quoteSharingAllowed: quoteSharingAllowed ?? this.quoteSharingAllowed,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'viewability': viewability,
      'embeddable': embeddable,
      'publicDomain': publicDomain,
      'textToSpeechPermission': textToSpeechPermission,
      'epub': epub?.toMap(),
      'pdf': pdf?.toMap(),
      'webReaderLink': webReaderLink,
      'accessViewStatus': accessViewStatus,
      'quoteSharingAllowed': quoteSharingAllowed,
    };
  }

  factory AccessInfo.fromMap(Map<String, dynamic> map) {
    return AccessInfo(
      country: map['country'],
      viewability: map['viewability'],
      embeddable: map['embeddable'],
      publicDomain: map['publicDomain'],
      textToSpeechPermission: map['textToSpeechPermission'],
      epub: map['epub'] != null ? Epub.fromMap(map['epub']) : null,
      pdf: map['pdf'] != null ? Epub.fromMap(map['pdf']) : null,
      webReaderLink: map['webReaderLink'],
      accessViewStatus: map['accessViewStatus'],
      quoteSharingAllowed: map['quoteSharingAllowed'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AccessInfo.fromJson(String source) =>
      AccessInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AccessInfo(country: $country, viewability: $viewability, embeddable: $embeddable, publicDomain: $publicDomain, textToSpeechPermission: $textToSpeechPermission, epub: $epub, pdf: $pdf, webReaderLink: $webReaderLink, accessViewStatus: $accessViewStatus, quoteSharingAllowed: $quoteSharingAllowed)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AccessInfo &&
        other.country == country &&
        other.viewability == viewability &&
        other.embeddable == embeddable &&
        other.publicDomain == publicDomain &&
        other.textToSpeechPermission == textToSpeechPermission &&
        other.epub == epub &&
        other.pdf == pdf &&
        other.webReaderLink == webReaderLink &&
        other.accessViewStatus == accessViewStatus &&
        other.quoteSharingAllowed == quoteSharingAllowed;
  }

  @override
  int get hashCode {
    return country.hashCode ^
        viewability.hashCode ^
        embeddable.hashCode ^
        publicDomain.hashCode ^
        textToSpeechPermission.hashCode ^
        epub.hashCode ^
        pdf.hashCode ^
        webReaderLink.hashCode ^
        accessViewStatus.hashCode ^
        quoteSharingAllowed.hashCode;
  }
}
