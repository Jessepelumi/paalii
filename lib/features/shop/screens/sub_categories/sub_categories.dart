import 'package:paalii/common/widgets/appbar/appbar.dart';
import 'package:paalii/common/widgets/images/rounded_banner_image.dart';
import 'package:paalii/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:paalii/common/widgets/texts/section_heading.dart';
import 'package:paalii/utils/constants/image_strings.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Sport",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const RoundedBannerImage(
                imageUrl: TImageStrings.test,
                widht: double.infinity,
                height: null,
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Sub-categories
              Column(
                children: [
                  SectionHeading(
                    title: "Sport Shirts",
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const ProductCardHorizontal()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
