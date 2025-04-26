import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../images/t_circular_image.dart';
class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:const TCircularImage(image: TImages.user,
        width: 60,
        height: 60,
        padding: 2,),
      title: Text("Sahil Kumar", style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.black),),
      subtitle: Text("stxnsick@gmail.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.black),),
      trailing: IconButton(onPressed: (){}, icon: const  Icon(Iconsax.edit,color: TColors.black,)),
    );
  }
}