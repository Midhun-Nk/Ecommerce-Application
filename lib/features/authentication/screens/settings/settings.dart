import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_nursery_plant_shop/common/appbar.dart';
import 'package:online_nursery_plant_shop/data/repositories/authentication/authentication_repository.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/homescreens/widget/homewidget.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/order/order.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/profilescreen/address/address.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/profilescreen/profilescreen.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/settings/widgets/settings_menu_tile.dart';
import 'package:online_nursery_plant_shop/features/authentication/screens/settings/widgets/settingswidgets.dart';
import 'package:online_nursery_plant_shop/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              TAppBar(
                title: Text(
                  'Account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
               TUserProfileTile ( onPressed: () => Get.to(()=> const  ProfileScreen(),)),
              
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SizedBox(
                height: TSizes.md,
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TSectionHeading(
                  title: 'Account Settings',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                
                TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subtitle: 'Set Shoping Delivery Address',
                    onTap: () => Get.to(() => const UserAddressScreen())),
                TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subtitle: 'Add , Remove Products and move to checkout',
                    onTap: () {}),
                TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Order",
                    subtitle: 'In-Progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen())),
                TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subtitle: 'Withdraw balance to registered bank acount',
                    onTap: () {}),
                TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subtitle: 'List of all the discounted coupons',
                    onTap: () {}),
                TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notification",
                    subtitle: 'Set Notification Preferences',
                    onTap: () {}),
                TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subtitle: 'Control your account privacy',
                    onTap: () {}),

                const SizedBox(height: TSizes.spaceBtwSections),
                const TSectionHeading(title: 'App Settings', showActionButton: false),
                   TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    subtitle: 'Upload Data to Your Cloud Firestore',
                    onTap: () {}),
                     TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geo location",
                    subtitle: 'Set Recommanded Your Location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {}),
                     TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Home",
                    subtitle: 'Search Result Privacy',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {}),
                     TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subtitle: 'Set Image Quality to HD',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {}),

                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: ()=> AuthenticationRepository.instance.logOut() , child: const Text("Logout"))
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
