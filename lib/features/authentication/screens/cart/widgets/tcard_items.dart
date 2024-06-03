import 'package:flutter/material.dart';
import 'package:online_nursery_plant_shop/common/style/product_price.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/cart/add_remove_button.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/cart/cart_item.dart';
import 'package:online_nursery_plant_shop/utils/constants/sizes.dart';

class TCardItems extends StatelessWidget {
  const TCardItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwSections),
        itemCount: 2,
        itemBuilder: (_, index) => Column(
              children: [
                const TCardItem(),
                if (showAddRemoveButton)
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                if (showAddRemoveButton)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          TProductQuantityWithAddRemoveButton(),
                        ],
                      ),
                      TProductPRice(price: "256")
                    ],
                  )
              ],
            ));
  }
}
