import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/Coupon_widget.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: TAppBar(
        showBackArrow: true,
        title:
        Text('Checkout', style: Theme.of(context).textTheme.headlineSmall),
    ),
    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(TSizes.defaultSpace),
    child: Column(
    children: [
    ///items in cart
    const TCartItems(
    showAddRemoveButtons: false,
    ),
    const SizedBox(
    height: TSizes.spaceBtwSections,
    ),

    ///Coupon Text field
    TCouponCode(dark: dark),
    const SizedBox(
    height: TSizes.spaceBtwSections,
    ),
    ///billing
    TRoundedContainer(showBorder: true,
    padding: const EdgeInsets.all(TSizes.md),
    backgroundColor: dark? TColors.black: TColors.white,
    child: const Column(
    children: [
    ///pricing
    TBillingAmountSection(),
    const SizedBox(height: TSizes.spaceBtwItems),
    ///divider
    const Divider(),
    const SizedBox(height: TSizes.spaceBtwItems),
    ///payment methods
    TBillingPaymentSection(),
    SizedBox(height: TSizes.spaceBtwItems),
    ///address
    TBillingAddressSection(),

    ],
    ),
    ),
    ],
    ),
    )),
    bottomNavigationBar:Padding(
    padding: const EdgeInsets.all(TSizes.defaultSpace),
    child: ElevatedButton(
    onPressed: ()=> Get.to(
    ()=>SuccessScreen(
    image: TImages.successfulPaymentIcon,
    title: 'Payment Successful!',
    subTitle: 'Your item will be shipped soon!',
    onPressed: () => Get.offAll(() => const NavigationMenu()),
    ),
    ),

    child: const Text('Checkout \₹375.00'),
    )
    ,
    )
    ,
    );
  }
}

