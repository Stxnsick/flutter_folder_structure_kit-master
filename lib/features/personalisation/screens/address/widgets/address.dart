import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/features/personalisation/screens/address/widgets/single_addres.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/colors.dart';
import 'add_new_addresses.dart';
class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
floatingActionButton: FloatingActionButton(onPressed: ()=> Get.to( const TAddNewAddressScreen()),
child: const Icon(Iconsax.add, color: TColors.white,),
backgroundColor: TColors.primary,
),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Addresses',  style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TSingleAddress(selectedAddress: true),
            TSingleAddress(selectedAddress: false),

          ],
        ),
        ),
      ),
    );
  }
}
