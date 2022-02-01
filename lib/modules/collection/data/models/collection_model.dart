import 'dart:convert';

import 'package:book_collector/modules/collection/domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class CollectionModel extends Equatable {
  final String id;
  final String name;
  final List<String>? books;
  final bool isPublic;
  final List<String>? sharedUsers;

  CollectionModel({
    required this.id,
    required this.name,
    this.books,
    required this.isPublic,
    this.sharedUsers,
  });

  CollectionModel copyWith({
    String? id,
    String? name,
    List<String>? books,
    bool? isPublic,
    List<String>? sharedUsers,
  }) {
    return CollectionModel(
      id: id ?? this.id,
      name: name ?? this.name,
      books: books ?? this.books,
      isPublic: isPublic ?? this.isPublic,
      sharedUsers: sharedUsers ?? this.sharedUsers,
    );
  }

  Collection toCollection() {
    return Collection(
      id: id,
      name: name,
      isPublic: isPublic,
      sharedUsers: sharedUsers,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'books': books,
      'isPublic': isPublic,
      'sharedUsers': sharedUsers,
    };
  }

  factory CollectionModel.fromMap(Map<String, dynamic> map) {
    return CollectionModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      books: List<String>.from(map['books']),
      isPublic: map['isPublic'] ?? false,
      sharedUsers: List<String>.from(map['sharedUsers']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CollectionModel.fromJson(String source) =>
      CollectionModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CollectionModel(id: $id, name: $name, books: $books, isPublic: $isPublic, sharedUsers: $sharedUsers)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CollectionModel &&
        other.id == id &&
        other.name == name &&
        listEquals(other.books, books) &&
        other.isPublic == isPublic &&
        listEquals(other.sharedUsers, sharedUsers);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        books.hashCode ^
        isPublic.hashCode ^
        sharedUsers.hashCode;
  }

  @override
  List<Object?> get props => [
        id,
        name,
        books,
        isPublic,
        sharedUsers,
      ];
}
