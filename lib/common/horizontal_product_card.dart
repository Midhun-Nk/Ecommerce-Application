import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_nursery_plant_shop/common/productcartvertical.dart';
import 'package:online_nursery_plant_shop/common/shapes/t_circular_icon.dart';
import 'package:online_nursery_plant_shop/common/style/product_price.dart';
import 'package:online_nursery_plant_shop/common/style/product_title_text.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/homescreens/widget/homewidget.dart';
import 'package:online_nursery_plant_shop/utils/constants/colors.dart';
import 'package:online_nursery_plant_shop/utils/constants/image_strings.dart';
import 'package:online_nursery_plant_shop/utils/constants/sizes.dart';
import 'package:online_nursery_plant_shop/utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.softGrey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const SizedBox(
                    height: 120,
                    width: 120,
                    child: TRoundedImage(
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                    )),
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.md,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: TColors.black,
                            )),
                  ),
                ),
                const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(
                top: TSizes.sm,
                left: TSizes.md,
              ),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                        title: 'Green Nike Sports Shirt',
                        smallSize: true,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      TBRandTitleWithVerificationICon(
                        title: 'Nike',
                      ),
                    ],
                  ),
                              const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                          child: TProductPRice(
                        price: '399.0',
                      )),
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    TSizes.productImageRadius))),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
