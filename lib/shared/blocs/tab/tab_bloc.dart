import 'package:bloc/bloc.dart';
import 'package:book_collector/shared/models/tab.dart';
import 'package:equatable/equatable.dart';

part 'tab_event.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  TabBloc() : super(AppTab.home) {
    on<UpdateTab>((event, emit) => emit(event.tab));
  }
}
