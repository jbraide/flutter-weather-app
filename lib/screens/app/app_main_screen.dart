import 'package:flutter/material.dart';
import 'package:weatherapp/screens/app/body.dart';

class AppMainScreen extends StatelessWidget {
  const AppMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppBodyScreen(),
      ),
    );
  }
}
