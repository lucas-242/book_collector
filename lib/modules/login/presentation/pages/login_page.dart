
import 'package:book_collector/modules/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/injection_container.dart' as di;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: LoginPage());
  // static Route<void> route() => MaterialPageRoute(builder: (_) => LoginPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) =>  di.instance<LoginCubit>(),
        child: const LoginForm(),
      ),
    );
  }
}
