import 'package:equatable/equatable.dart';

class Book extends Equatable {
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

  @override
  List<Object?> get props => [
        id,
        author,
        category,
        createdAt,
        edition,
        isBestSeller,
        isVerified,
        name,
        originalTitle,
        pages,
        publishedBy,
        rating,
        summary,
        updatedAt,
        year,
        image,
      ];
}
