import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalisation/screens/profile/widgets/profile_menu.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  TAppBar(showBackArrow: true,
        title: Text('Profile',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.black),),),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
         child: Column(
           children: [
             ///profile picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(image: TImages.user,width: 80,height: 80,),
                  TextButton(onPressed: (){}, child: Text('Change Profile Picture',style: Theme.of(context)
                      .textTheme
                      .titleSmall)),
                ],
              ),
            ),
             ///details
            const SizedBox(height: TSizes.spaceBtwItems/2,) ,
             const Divider(),
             const SizedBox(height: TSizes.spaceBtwItems,) ,
             const TSectionHeading(title: 'Profile Information', showActionButton: false,),
             const SizedBox(height: TSizes.spaceBtwItems,) ,

             TProfileMenu(title: 'Name', value: 'Sahil Kumar', onPressed: (){}),
             TProfileMenu(title: 'Username', value: '@stxnsick', onPressed: (){}),
             const SizedBox(height: TSizes.spaceBtwItems,),
             const Divider(),
             const SizedBox(height: TSizes.spaceBtwItems,),
             ///heading personal info
             const TSectionHeading(title: 'Personal Information', showActionButton: false,),
             const SizedBox(height: TSizes.spaceBtwItems,),
             TProfileMenu(
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'E-mail',
                value: 'stxnsick@gmail.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+91-9817566026', // Fixed phone number format
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Date of Birth',
                value: '23 March, 2004',
                onPressed: () {},
              ),
             const Divider(),
             const SizedBox(height: TSizes.spaceBtwItems,),
             Center(
               child: TextButton(onPressed: (){}, child:Text('Logout',style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.red),
             ),
             ),
             )
            ],
         ),
        ),

      ),
    );
  }
}

