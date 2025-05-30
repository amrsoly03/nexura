// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:nexura/Core/functions/capitalize.dart';
import 'package:nexura/Core/utils/size_config.dart';
import 'package:nexura/Core/utils/theme.dart';
import 'package:nexura/first_screen.dart';

import '../../../../../Core/utils/styles.dart';
import '../../../../../Core/widgets/custom_appBar.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
    required this.user,
    required this.title,
    required this.card,
  });

  final Users user;
  final String title;
  final Widget card;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 30,
              top: 50,
            ),
            width: SizeConfig.screenWidth * 0.5,
            child: Image.asset(
              'assets/logo.png',
              color: darkBlue,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                capitalize('login to your account'),
                style: Styles.textStyle18.copyWith(color: darkBlue),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          card,
        ],
      )),
    );
  }
}
