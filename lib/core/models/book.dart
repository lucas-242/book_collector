import 'dart:convert';

class Book {
  final String id;
  final String author;
  final String category;
  final DateTime createdAt;
  final String edition;
  final bool isBestSeller;
  final bool isVerified;
  final String name;
  final String? originalTitle;
  final int? pages;
  final String publishedBy;
  final double? rating;
  final String? summary;
  final DateTime updatedAt;
  final int year;
  final String? image;

  Book({
    required this.id,
    required this.author,
    required this.category,
    DateTime? createdAt,
    required this.edition,
    this.isBestSeller = false,
    this.isVerified = true,
    required this.name,
    this.originalTitle,
    this.pages,
    required this.publishedBy,
    this.rating,
    this.summary,
    DateTime? updatedAt,
    required this.year,
    this.image,
  })  : this.updatedAt = updatedAt ?? DateTime.now(),
        this.createdAt = createdAt ?? DateTime.now();

  Book copyWith({
    String? id,
    String? author,
    String? category,
    DateTime? createdAt,
    String? edition,
    bool? isBestSeller,
    bool? isVerified,
    String? name,
    String? originalTitle,
    int? pages,
    String? publishedBy,
    double? rating,
    String? summary,
    DateTime? updatedAt,
    int? year,
    String? image,
  }) {
    return Book(
      id: id ?? this.id,
      author: author ?? this.author,
      category: category ?? this.category,
      createdAt: createdAt ?? this.createdAt,
      edition: edition ?? this.edition,
      isBestSeller: isBestSeller ?? this.isBestSeller,
      isVerified: isVerified ?? this.isVerified,
      name: name ?? this.name,
      originalTitle: originalTitle ?? this.originalTitle,
      pages: pages ?? this.pages,
      publishedBy: publishedBy ?? this.publishedBy,
      rating: rating ?? this.rating,
      summary: summary ?? this.summary,
      updatedAt: updatedAt ?? this.updatedAt,
      year: year ?? this.year,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'category': category,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'edition': edition,
      'isBestSeller': isBestSeller,
      'isVerified': isVerified,
      'name': name,
      'originalTitle': originalTitle,
      'pages': pages,
      'publishedBy': publishedBy,
      'rating': rating,
      'summary': summary,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
      'year': year,
      'image': image,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'],
      author: map['author'],
      category: map['category'],
      createdAt: DateTime.parse(map['createdAt'].toDate().toString()),
      edition: map['edition'],
      isBestSeller: map['isBestSeller'],
      isVerified: map['isVerified'],
      name: map['name'],
      originalTitle: map['originalTitle'],
      pages: map['pages'],
      publishedBy: map['publishedBy'],
      rating: map['rating'],
      summary: map['summary'],
      updatedAt: DateTime.parse(map['updatedAt'].toDate().toString()),
      year: map['year'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Book(author: $author, category: $category, createdAt: $createdAt, edition: $edition, isBestSeller: $isBestSeller, isVerified: $isVerified, name: $name, originalTitle: $originalTitle, pages: $pages, publishedBy: $publishedBy, rating: $rating, summary: $summary, updatedAt: $updatedAt, year: $year, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Book &&
        other.author == author &&
        other.category == category &&
        other.createdAt == createdAt &&
        other.edition == edition &&
        other.isBestSeller == isBestSeller &&
        other.isVerified == isVerified &&
        other.name == name &&
        other.originalTitle == originalTitle &&
        other.pages == pages &&
        other.publishedBy == publishedBy &&
        other.rating == rating &&
        other.summary == summary &&
        other.updatedAt == updatedAt &&
        other.year == year &&
        other.image == image;
  }

  @override
  int get hashCode {
    return author.hashCode ^
        category.hashCode ^
        createdAt.hashCode ^
        edition.hashCode ^
        isBestSeller.hashCode ^
        isVerified.hashCode ^
        name.hashCode ^
        originalTitle.hashCode ^
        pages.hashCode ^
        publishedBy.hashCode ^
        rating.hashCode ^
        summary.hashCode ^
        updatedAt.hashCode ^
        year.hashCode ^
        image.hashCode;
  }
}
