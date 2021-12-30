part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchBooksEvent extends SearchEvent {
  final String search;

  SearchBooksEvent(this.search);
}
