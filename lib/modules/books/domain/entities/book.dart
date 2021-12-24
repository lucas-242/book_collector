import 'package:equatable/equatable.dart';

class Book extends Equatable {
  final String id;
  final List<String> authors;
  final List<String> categories;
  final DateTime createdAt;
  final String? edition;
  final String title;
  final String? subtitle;
  final String? originalTitle;
  final int? pages;
  final String? publisher;
  final DateTime? publishedDate;
  final double? averageRating;
  final int? ratingsCount;
  final String? summary;
  final DateTime updatedAt;
  final String? image;

  Book({
    required this.id,
    required this.authors,
    required this.categories,
    DateTime? createdAt,
    this.edition,
    required this.title,
    this.subtitle,
    this.originalTitle,
    this.pages,
    this.publisher,
    this.averageRating,
    this.ratingsCount,
    this.summary,
    this.publishedDate,
    DateTime? updatedAt,
    this.image,
  })  : this.updatedAt = updatedAt ?? DateTime.now(),
        this.createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        id,
        authors,
        categories,
        createdAt,
        edition,
        title,
        originalTitle,
        pages,
        publisher,
        publishedDate,
        averageRating,
        summary,
        updatedAt,
        image,
      ];
}
