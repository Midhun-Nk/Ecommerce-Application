import 'package:flutter/material.dart';
import 'package:online_nursery_plant_shop/common/productcartvertical.dart';
import 'package:online_nursery_plant_shop/common/shapes/TGrid_Layout.dart';
import 'package:online_nursery_plant_shop/common/style/section_heading.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/shop/widget/brandshowcase.dart';
import 'package:online_nursery_plant_shop/utils/constants/image_strings.dart';
import 'package:online_nursery_plant_shop/utils/constants/sizes.dart';

class TcategoryTab extends StatelessWidget {
  const TcategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TBrandShowCase(
                images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                  TImages.productImage4
                ],
                
              ),
         const SizedBox(height: TSizes.spaceBtwItems),
        
              TSectionHeading(title: 'You Might Like', onPressed: (){},),
        
              const SizedBox(height: TSizes.spaceBtwItems),
        
              TGridLayout(itemCount: 4, itemBuilder: (_,index)=> const TProductCartVertical()),

              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
