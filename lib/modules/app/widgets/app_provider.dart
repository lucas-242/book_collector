
import 'package:authentication_repository/authentication_repository.dart';
import 'package:book_collector/modules/app/app.dart';
import 'package:book_collector/shared/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppProvider extends StatelessWidget {
  final AuthenticationRepository _authenticationRepository;

  const AppProvider({
    Key? key,
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (_) => AppBloc(
              authenticationRepository: _authenticationRepository,
            ),
          ),
          BlocProvider<TabBloc>(
            create: (_) => TabBloc(),
          ),
        ],
        // child: AdaptiveTheme(
        //   light: AppThemes.lightTheme,
        //   dark: AppThemes.darkTheme,
        //   initial: AdaptiveThemeMode.light,
        //   builder: (lightTheme, darkTheme) => MaterialApp(
        //     theme: lightTheme,
        //     darkTheme: darkTheme,
        //     debugShowCheckedModeBanner: false,
        //     home: FlowBuilder<AppStatus>(
        //       state: context.select((AppBloc bloc) => bloc.state.status),
        //       onGeneratePages: onGenerateAppViewPages,
        //     ),
        //   ),
        // );
        child: App(),
      ),
    );
  }
}
