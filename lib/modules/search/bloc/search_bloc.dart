import 'package:bloc/bloc.dart';
import 'package:book_collector/core/modules/books/books.dart';
import 'package:equatable/equatable.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchBook _searchBook;

  SearchBloc({required SearchBook searchBook})
      : _searchBook = searchBook,
        super(SearchNoData()) {
    on<SearchBooksEvent>(_onSearchBook);
    on<SelectBookEvent>(_onSelectBook);
  }

  Future<void> _onSearchBook(
      SearchBooksEvent event, Emitter<SearchState> emit) async {
    //TODO: Handle errors
    final oldBooks = state.books;
    emit.call(SearchLoading());
    await _searchBook
        .call(search: event.search)
        .then((books) => emit.call(SearchLoaded(books: books)))
        .catchError((error) => emit
            .call(SearchError(books: oldBooks, errorMessage: error.message)));
  }

  void _onSelectBook(SelectBookEvent event, Emitter<SearchState> emit) {
    emit.call(SearchLoaded(books: state.books, bookSelected: event.book));
  }
}
