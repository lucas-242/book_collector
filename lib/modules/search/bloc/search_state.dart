part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  final List<Book> books;
  final String? errorMessage;
  SearchState({List<Book>? books, this.errorMessage}) : this.books = books ?? [];

  @override
  List<Object> get props => [books];
}

// class BooksError extends SearchState {
//   final String? errorMessage;
//   BooksError(this.errorMessage);
// }

class SearchLoaded extends SearchState {
  final String? search;

  SearchLoaded({List<Book>? books, this.search}) : super(books: books);
}

class SearchLoading extends SearchState {}

class SearchNoData extends SearchState {}

class SearchError extends SearchState {
  final String? errorMessage;

  SearchError({List<Book>? books, this.errorMessage}) : super(books: books, errorMessage: errorMessage);

}
