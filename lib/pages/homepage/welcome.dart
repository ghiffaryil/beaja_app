import 'package:beaja/common/components/divider.dart';
import 'package:beaja/common/components/elevated_button.dart';
import 'package:beaja/common/components/image_rounded.dart';
import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/images.dart';
import 'package:beaja/common/constants/styles/styles.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Skip ',
                      style: TextStyles.regular(color: AppColors.white),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ),
            CustomDividers.smallDivider(),
            const RoundedImage(
              imageUrl: Images.logosquare,
              borderRadius: 100,
              imageType: 'asset',
              width: 100,
              height: 100,
            ),
            CustomDividers.smallDivider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Welcome, \nRafathar!',
                textAlign: TextAlign.center,
                style: TextStyles.h1(
                    color: AppColors.white, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Nikmati fitur layanan makanan pesan antar cepat dengan Foodie Apps',
                textAlign: TextAlign.center,
                style: TextStyles.regular(color: AppColors.white),
              ),
            ),
            CustomDividers.extraLargeDivider(),
            Text(
              'Setel Lokasi',
              textAlign: TextAlign.center,
              style: TextStyles.h3(color: AppColors.white),
            ),
            ButtonFilled.primary(
                backgroundColor: AppColors.white,
                textColor: AppColors.bg,
                text: 'Tetapkan Lokasi',
                iconData: Icons.pin_drop_outlined,
                onPressed: () {
                  Navigator.pop(context);
                }),
            CustomDividers.verySmallDivider(),
          ],
        ),
      ),
    );
  }
}
