import 'package:bloc/bloc.dart';
import 'package:book_collector/core/models/models.dart';
import 'package:equatable/equatable.dart';

part 'tab_event.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  TabBloc() : super(AppTab.home) {
    on<UpdateTab>((event, emit) => emit(event.tab));
  }
}
