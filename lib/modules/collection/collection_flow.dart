import 'package:book_collector/modules/collection/collection.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionFlow extends StatelessWidget {
  const CollectionFlow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<CollectionState>(
      state: context.select((CollectionBloc bloc) => bloc.state),
      onGeneratePages: (state, pages) => onGenerateCollectionPages(state, context),
    );
  }

  List<Page> onGenerateCollectionPages(CollectionState state, BuildContext context) {
    return [
      CollectionPage.page(),
    ];
  }
}