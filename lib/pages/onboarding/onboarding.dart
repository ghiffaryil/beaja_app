// ignore_for_file: unused_field
import 'package:beaja/common/components/divider.dart';
import 'package:beaja/common/components/image_rounded.dart';
import 'package:flutter/material.dart';
import 'package:beaja/common/components/elevated_button.dart';
import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:beaja/pages/auth/auth.dart';

// Import Component
import 'package:upgrader/upgrader.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class CarouselItem {
  final String imagePath;
  final String title;
  final String description;

  CarouselItem({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentIndex = 0;
  var presscount = 0;
  final CarouselController _carouselController = CarouselController();

  final List<CarouselItem> carouselItems = [
    CarouselItem(
      imagePath: Images.onboardingSlide1,
      title: 'Anda Lapar? \n Kami Siap Antar',
      description: '',
    ),
    CarouselItem(
      imagePath: Images.onboardingSlide2,
      title: 'Cari Restaurant Favoritmu di sini',
      description: '',
    ),
    CarouselItem(
      imagePath: Images.onboardingSlide3,
      title: 'Cari Makanan Favoritmu di sini',
      description: '',
    ),
  ];

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  final upgrader = Upgrader(
    minAppVersion: '1.0.4',
    durationUntilAlertAgain: const Duration(minutes: 1),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Column(
        children: [
          headerLogo(),
          CustomDividers.smallDivider(),
          onboardingSlider(),
        ],
      ),
    );
  }

  Widget onboardingSlider() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: [
        // SLIDER
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.65,
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              }),
          items: carouselItems.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return CarouselItemWidget(item: item);
              },
            );
          }).toList(),
        ),
        // DOT
        _currentIndex == 2 ? buttonFollowSurvey() : indicatorDot(),
      ]),
    );
  }

  Widget headerLogo() {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        alignment: Alignment.center,
        child: const RoundedImage(
          imageUrl: Images.logosquare,
          borderRadius: 100,
          imageType: 'asset',
          width: 80,
          height: 80,
        ));
  }

  Widget indicatorDot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: carouselItems.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () {
            _carouselController.animateToPage(entry.key);
          },
          child: Container(
            width: 15.0,
            height: 15.0,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? AppColors.primary
                    : AppColors.light),
          ),
        );
      }).toList(),
    );
  }

  Widget buttonFollowSurvey() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: ButtonFilled.primary(
          text: 'Get Started',
          // fontSize: 15,
          height: 50,
          textColor: AppColors.bg,
          backgroundColor: AppColors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const AuthPage();
            }));
          }),
    );
  }
}

class CarouselItemWidget extends StatelessWidget {
  final CarouselItem item;
  const CarouselItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Text(
          item.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 36,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Image.asset(
          item.imagePath,
          width: MediaQuery.of(context).size.height * 0.3,
        ),
      ],
    );
  }
}
