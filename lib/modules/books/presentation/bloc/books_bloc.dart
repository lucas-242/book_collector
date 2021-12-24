import 'package:bloc/bloc.dart';
import 'package:book_collector/modules/books/books.dart';
import 'package:equatable/equatable.dart';

part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final SearchBook _searchBook;

  BooksBloc({required SearchBook searchBook})
      : _searchBook = searchBook,
        super(BooksNoData()) {
    on<SearchBooksEvent>(_onSearchBook);
  }

  Future<void> _onSearchBook(SearchBooksEvent event, Emitter<BooksState> emit) async {
    //TODO: Handle errors
    final oldBooks = state.books;
    emit.call(BooksLoading());
    await _searchBook
        .call(search: event.search)
        .then((books) => emit.call(BooksLoaded(books: books)))
        .catchError((error) => emit.call(BooksError(books: oldBooks, errorMessage: error.message)));
  }
}
