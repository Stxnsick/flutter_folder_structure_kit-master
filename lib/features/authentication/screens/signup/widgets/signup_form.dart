import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/verify_email.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(child:
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.firstName,prefixIcon: Icon(Iconsax.user)),
            ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(child:
            TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: TTexts.lastName,prefixIcon: Icon(Iconsax.user)),

            ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        ///username
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.username,prefixIcon: Icon(Iconsax.user_edit)),
        ),
        ///email
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        ///phone Number
        TextFormField(
          decoration: const InputDecoration(labelText: TTexts.phoneNo,prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        ///password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash1)
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        ///terms and conditions
        const TTermsAndConditionsCheckbox(),
        SizedBox(height: TSizes.spaceBtwSections),

        ///signup button
        SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: ()=>Get.to(()=>const VerifyEmailScreen()),
          child: const Text(TTexts.createAccount),)
        ),
      ],
    ),

    );
  }
}

