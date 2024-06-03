
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_nursery_plant_shop/common/appbar.dart';
import 'package:online_nursery_plant_shop/common/shapes/t_circular_icon.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/homescreens/widget/homewidget.dart';
import 'package:online_nursery_plant_shop/utils/constants/colors.dart';
import 'package:online_nursery_plant_shop/utils/constants/image_strings.dart';
import 'package:online_nursery_plant_shop/utils/constants/sizes.dart';
import 'package:online_nursery_plant_shop/utils/helpers/helper_functions.dart';

class TImageProductSlider extends StatelessWidget {
  const TImageProductSlider({
    super.key,
    
  });



  @override
  Widget build(BuildContext context) {
        final dark = THelperFunctions.isDarkMode(context);

    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            const SizedBox(
                height: 400,
                child: Padding( 
                  padding:
                      EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(TImages.productImage2))),
                )),
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_,__)=> const SizedBox( width: TSizes.spaceBtwItems,) ,
                  itemCount: 8,
                  shrinkWrap: true,
                  itemBuilder: (_,index)=> TRoundedImage(
                    imageUrl: TImages.productImage3,
                    backgroundColor: dark ? TColors.dark : TColors.light,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    width: 80,
                  ),
                ),
              ),
            )
    
            , const TAppBar(
              showbackarrow: true,
              actions: [
       TCircularIcon(
        icon: Iconsax.heart5,color: Colors.red,
      )
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

