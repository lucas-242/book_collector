part of 'books_bloc.dart';

abstract class BooksState extends Equatable {
  const BooksState();  

  @override
  List<Object> get props => [];
}
class BooksInitial extends BooksState {}
