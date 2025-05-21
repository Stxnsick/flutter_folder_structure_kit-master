import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/rounded_container.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress,
  });
final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  TRoundedContainer(
      width: double.infinity,
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      backgroundColor: selectedAddress? TColors.primary.withOpacity(0.5) :Colors.transparent ,
      borderColor: selectedAddress?Colors.transparent:dark ? TColors.darkerGrey : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(right: 5,
            top: 0,
            child: Icon(
              selectedAddress? Iconsax.tick_circle5:null,
              color: selectedAddress? dark ? TColors.light : TColors.dark.withOpacity(0.2): null ,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sahil Kumar',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,),



              const SizedBox(height: TSizes.sm/2,),
              const Text('+91-9817566026', maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: TSizes.sm/2,),
              const Text('Govt. Polytechnic Hamirpur, Baru, Hamirpur (HP). Pincode: 177001',
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )
        ],
      ),
    );
  }
}
