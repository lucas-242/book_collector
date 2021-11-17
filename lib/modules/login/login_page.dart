import 'package:book_collector/shared/widgets/social_login_button_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            'assets/images/collector.png',
          ),
          height: 150,
          width: 150,
        ),
        SocialLoginButton(),
      ],
    ));
  }
}
