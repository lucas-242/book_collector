part of 'books_bloc.dart';

abstract class BooksState extends Equatable {
  final List<Book> books;
  final String? errorMessage;
  BooksState({List<Book>? books, this.errorMessage}) : this.books = books ?? [];

  @override
  List<Object> get props => [books];
}

// class BooksError extends BooksState {
//   final String? errorMessage;
//   BooksError(this.errorMessage);
// }

class BooksLoaded extends BooksState {
  final String? search;

  BooksLoaded({List<Book>? books, this.search}) : super(books: books);
}

class BooksLoading extends BooksState {}

class BooksNoData extends BooksState {}

class BooksError extends BooksState {
  final String? errorMessage;

  BooksError({List<Book>? books, this.errorMessage}) : super(books: books, errorMessage: errorMessage);

}
