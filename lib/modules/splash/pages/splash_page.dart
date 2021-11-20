import 'dart:async';

import 'package:book_collector/shared/auth/auth.dart';
import 'package:book_collector/shared/core/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/shared/themes/themes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late StreamSubscription<User?> userStream;

  @override
  void initState() {
    Timer(Duration(seconds: 3), () => listenUserChanges());
    super.initState();
  }

  void listenUserChanges() {
    userStream = FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        final auth = context.read<Auth>();
        auth.user = user;
        Navigator.pushReplacementNamed(context, AppRoutes.app);
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.login);
      }
    });
  }

  @override
  void dispose() {
    userStream.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset(AppImages.logo),
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}
