import 'package:paalii/common/widgets/appbar/appbar.dart';
import 'package:paalii/common/widgets/products/product_cards/product_price_text.dart';
import 'package:paalii/features/shop/screens/cart/widgets/cart_list_item.dart';
import 'package:paalii/features/shop/screens/checkout/checkout.dart';
import 'package:paalii/localization/naira_symbol.dart';
import 'package:paalii/utils/constants/sizes.dart';
//import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: CartListItem(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace,
          vertical: TSizes.defaultSpace * 2,
        ),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Checkout"),
              const SizedBox(width: TSizes.spaceBtwItems / 2),
              ProductPriceText(
                price: "49,400",
                currency: getNaira(),
                isCheckout: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
