import 'package:baby_hub/common/widgets/custom/container/rounded_container.dart';
import 'package:baby_hub/common/widgets/images/circular_image.dart';
import 'package:baby_hub/common/widgets/products/product_cards/product_price_text.dart';
import 'package:baby_hub/common/widgets/texts/brand_title_text_verified.dart';
import 'package:baby_hub/common/widgets/texts/product_title_text.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/enums.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
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
            const SizedBox(width: TSizes.spaceBtwItems),

            // Price
            ProductPriceText(price: "7800", lineThrough: true),
            const SizedBox(width: TSizes.spaceBtwItems),
            ProductPriceText(price: "7100", isLarge: true),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Title
        ProductTitleText(title: "Unisex baby sneakers"),
        SizedBox(height: TSizes.spaceBtwItems),

        // Stock status
        Row(
          children: [
            ProductTitleText(title: "Status"),
            SizedBox(width: TSizes.spaceBtwItems),
            Text("In stock",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .apply(color: TColors.error)),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            CircularImage(
              image: TImageStrings.test,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            SizedBox(width: TSizes.spaceBtwItems / 3.5),
            BrandTitleTextVerified(
              title: "JEOLAD",
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
