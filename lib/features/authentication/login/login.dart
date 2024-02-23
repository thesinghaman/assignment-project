import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_styles.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: ASpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                /// Form
                ALoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
