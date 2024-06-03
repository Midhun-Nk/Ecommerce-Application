import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_nursery_plant_shop/common/appbar.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/profilescreen/address/add_new_address.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/profilescreen/address/widgets/single_address.dart';
import 'package:online_nursery_plant_shop/utils/constants/colors.dart';
import 'package:online_nursery_plant_shop/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(() => const AddNewAddressScreen()),
          backgroundColor: TColors.primary ,
          child: const Icon(Iconsax.add,color: TColors.white,),),
          appBar: TAppBar(
            showbackarrow: true,title: Text("Address", style: Theme.of(context).textTheme.headlineSmall,)
          ),
          body: const SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
               TSingleAddress(selectedAddress:true ),
                TSingleAddress(selectedAddress:false ),
              ],
            )),
          ),
    );
  }
}
