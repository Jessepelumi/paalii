import 'package:paalii/common/styles/shadows.dart';
import 'package:paalii/common/widgets/custom/container/rounded_container.dart';
import 'package:paalii/common/widgets/icons/heart_icon.dart';
import 'package:paalii/common/widgets/images/rounded_banner_image.dart';
import 'package:paalii/common/widgets/products/product_cards/product_price_text.dart';
import 'package:paalii/common/widgets/texts/brand_title_text_verified.dart';
import 'package:paalii/common/widgets/texts/product_title_text.dart';
import 'package:paalii/features/shop/screens/product/product_details.dart';
import 'package:paalii/localization/naira_symbol.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/image_strings.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  // Thumbnail image
                  const RoundedBannerImage(
                    imageUrl: TImageStrings.product_test,
                    applyImageRadius: true,
                  ),

                  // Sale tag
                  Positioned(
                    top: 12,
                    left: 5,
                    child: RoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  // Favourite icon
                  const Positioned(
                    top: 5,
                    right: 5,
                    child: HeartIconWidget(
                      icon: Iconsax.heart5,
                      width: TSizes.iconLg,
                      height: TSizes.iconLg,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            // Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product title
                  ProductTitleText(
                    title: "JEOLAD Baby Shoe",
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),

                  // Brand name
                  BrandTitleTextVerified(title: "JEOLAD"),
                ],
              ),
            ),

            // Spacer
            const Spacer(),

            // Purchase
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: ProductPriceText(
                    price: "35.0",
                    currency: getNaira(),
                  ),
                ),

                // Add to cart
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
