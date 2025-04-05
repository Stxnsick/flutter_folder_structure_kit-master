import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import '../../../../utils/constants/sizes.dart' show TSizes;
import '../../../../utils/helpers/helper_functions.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);
    return  Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title


              Text(TTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              ///form
              TSignupForm(dark: dark),
          ///divider
          TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
          const TSocialButtons(),
            ],

          ),
        ),
      ) ,
    );
  }
}


