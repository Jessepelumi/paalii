import 'package:paalii/common/widgets/success_screen/sucess_screen.dart';
import 'package:paalii/features/authentication/screens/login/login.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/image_strings.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/constants/text_strings.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(
              CupertinoIcons.clear,
              color: dark ? TColors.white : TColors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(TImageStrings.verify),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Title & Subtitle
              Text(
                TTextStrings.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "jesseoluwapelumi01@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTextStrings.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: TImageStrings.success,
                      title: TTextStrings.yourAccountCreatedTitle,
                      subTitle: TTextStrings.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(
                        () => const LoginScreen(),
                      ),
                    ),
                  ),
                  child: Text(
                    TTextStrings.tcontinue,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: TColors.white),
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    TTextStrings.resendEmail,
                    style: TextStyle(color: TColors.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
