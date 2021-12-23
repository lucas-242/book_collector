import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  BooksBloc() : super(BooksInitial()) {
    on<BooksEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
