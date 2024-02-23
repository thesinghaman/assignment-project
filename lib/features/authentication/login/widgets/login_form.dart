import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/validators/validation.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ALoginForm extends StatelessWidget {
  const ALoginForm({
    super.key,
  });

  SnackBar showSnackBar(String title, BuildContext context, ContentType type) {
    return SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: '',
        contentType: type,
      ),
    );
  }

  void fieldsValidator(
      String emailField, String passField, BuildContext context) {
    String? vaildateEmail = AValidator.validateEmail(emailField);
    String? validatePass = AValidator.validatePassword(passField);
    var snackBar =
        showSnackBar(ATexts.correctInput, context, ContentType.success);

    if (vaildateEmail != null) {
      snackBar = showSnackBar(vaildateEmail, context, ContentType.warning);
    } else if (validatePass != null) {
      snackBar = showSnackBar(validatePass, context, ContentType.warning);
    }
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: ATexts.email),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: ATexts.password,
                prefixIcon: Icon(Iconsax.password_check),
              ),
            ),

            const SizedBox(height: ASizes.spaceBtwSections),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    fieldsValidator(emailController.text.trim(),
                        passwordController.text.trim(), context);
                  },
                  child: const Text(ATexts.submit)),
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
