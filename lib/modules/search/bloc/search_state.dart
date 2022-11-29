part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  final List<Book> books;
  final Book? bookSelected;
  final String? errorMessage;
  SearchState({List<Book>? books, this.bookSelected, this.errorMessage})
      : this.books = books ?? [];

  @override
  List<Object?> get props => [books, bookSelected, errorMessage];
}

class SearchBookDetails extends SearchState {
  final Book bookSelected;
  SearchBookDetails({required List<Book> books, required this.bookSelected})
      : super(books: books, bookSelected: bookSelected);
}

class SearchLoaded extends SearchState {
  final Book? bookSelected;
  final String? search;

  SearchLoaded({List<Book>? books, this.search, this.bookSelected})
      : super(books: books, bookSelected: bookSelected);

  // SearchLoaded copyWith({List<Book>? books, Book? bookSelected, String? errorMessage, String? search}) {
  //   return SearchLoaded(
  //     books: books ?? this.books,
  //     search: search ?? this.search,
  //     bookSelected: bookSelected ?? this.bookSelected,
  //   );
  // }
}

class SearchLoading extends SearchState {}

class SearchNoData extends SearchState {}

class SearchError extends SearchState {
  final String? errorMessage;

  SearchError({List<Book>? books, this.errorMessage})
      : super(books: books, errorMessage: errorMessage);
}
