import 'package:baby_hub/common/widgets/texts/section_heading.dart';
import 'package:baby_hub/features/shop/screens/product/widgets/bottom_add_to_cart.dart';
import 'package:baby_hub/features/shop/screens/product/widgets/product_attributes.dart';
import 'package:baby_hub/features/shop/screens/product/widgets/product_image_header.dart';
import 'package:baby_hub/features/shop/screens/product/widgets/product_meta_data.dart';
import 'package:baby_hub/features/shop/screens/product/widgets/rating_and_share.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
//import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product image header
            ProductImageHeader(),

            // Product details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & share
                  RatingAndShare(),

                  // Price, title, stock & brand
                  ProductMetaData(),

                  // Attributes
                  ProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Checkout"),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Description
                  SectionHeading(title: "Description", showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    "The unisex baby sneakers form JEOLAD is made with love with focus of comfort. It delivers xoxo comfort to your toddler. It is practical and fits most outfits. It is a great choice to make that shows you priortize the comfort of your child over anythings else. ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show More",
                    trimExpandedText: "Show Less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),

                  // Reviews
                  const Divider(),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(
                          title: "Reviews (199)", showActionButton: false),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Iconsax.arrow_right_3),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}