import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_nursery_plant_shop/common/productcartvertical.dart';
import 'package:online_nursery_plant_shop/common/shapes/TGrid_Layout.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/all_product/all_product.dart';

import 'package:online_nursery_plant_shop/features/authentication/screens/homescreens/widget/home_appbar.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/homescreens/widget/homewidget.dart';
import 'package:online_nursery_plant_shop/utils/constants/colors.dart';
import 'package:online_nursery_plant_shop/utils/constants/image_strings.dart';

import 'package:online_nursery_plant_shop/utils/constants/sizes.dart';
import 'package:online_nursery_plant_shop/utils/helpers/helper_functions.dart';
import 'package:online_nursery_plant_shop/widget/searchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const TPrimaryHeaderContainer(
              child: Column(
            children: [
              THomeAppBar(),
              SizedBox(height: TSizes.spaceBtwItems),
              TSearchContainer(
                text: "Search in Store",
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              Padding(
                padding: EdgeInsets.only(
                  left: TSizes.defaultSpace,
                ),
                child: Column(
                  children: [
                    TSectionHeading(
                      title: "Popualar Category",
                      showActionButton: false,
                      textColor: TColors.white,

                    ),
                    

                    SizedBox(height: TSizes.spaceBtwItems),
                    THomeCategory(),
                    
                  ],
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
            ],
          )),
          const Padding(
              padding: EdgeInsets.all(TSizes.md),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                ],
              )),
          const SizedBox(
            height: TSizes.sm,
          ),
           Padding(
             padding: const EdgeInsets.only(left: TSizes.md),
             child: TSectionHeading(
              title: "New Arrivals",
              textColor: dark ? TColors.white : TColors.black,
              onPressed: () =>Get.to(()=>const AllProduct()),
                       ),
           ),
          // const SizedBox(height: TSizes.sm), 
         Padding(
           padding: const EdgeInsets.only(left:TSizes.md,right:TSizes.md),
           child: TGridLayout(itemCount: 6, itemBuilder:(_,index)=> const TProductCartVertical(),),
         )
        ],
      ),
    ));
  }
}
