import 'package:book_collector/shared/auth/auth.dart';
import 'package:book_collector/shared/core/app_routes.dart';
import 'package:book_collector/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/shared/widgets/social_login_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Image.asset(AppImages.logo),
          height: 150,
          width: 150,
        ),
        SizedBox(height: 70),
        SocialLoginButton(
          onTap: signInWithGoogle,
        ),
      ],
    ));
  }

  Future<void> signInWithGoogle() async {
    final auth = context.read<Auth>();
    await auth
        .signInWithGoogle()
        .then((value) =>
            Navigator.of(context).pushReplacementNamed(AppRoutes.app))
        .catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(getAppSnackBar(
        message: error.message,
        type: SnackBarType.error,
      ));
    });
  }
}
