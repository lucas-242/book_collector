part of 'collection_bloc.dart';

abstract class CollectionState extends Equatable {
  const CollectionState();  

  @override
  List<Object> get props => [];
}
class CollectionInitial extends CollectionState {}
