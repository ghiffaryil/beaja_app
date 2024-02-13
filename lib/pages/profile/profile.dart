import 'package:beaja/common/components/divider.dart';
import 'package:beaja/common/components/navigation_bottom_bar.dart';
import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/padding.dart';
import 'package:beaja/common/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgprofile,
        surfaceTintColor: AppColors.bgprofile,
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.bgprofile,
          padding: CustomPadding.pdefault,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Details',
                    style: TextStyles.h4(),
                  ),
                  GestureDetector(
                      child: Text(
                        'Edit',
                        style: TextStyles.h4(color: AppColors.primary),
                      ),
                      onTap: () {}),
                ],
              ),
              CustomDividers.smallDivider(),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: CustomPadding.p2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Image.network(
                        'https://static.vecteezy.com/system/resources/previews/022/205/791/original/face-profile-images-illustration-in-flat-style-free-vector.jpg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1.0,
                                          color: AppColors.bgLight))),
                              child: Text(
                                'Rafathar Ahmad',
                                style: TextStyles.h4(color: AppColors.bg),
                              )),
                          CustomDividers.verySmallDivider(),
                          Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1.0,
                                          color: AppColors.bgLight))),
                              child: const Text('rafathar@gmail.com')),
                          CustomDividers.verySmallDivider(),
                          Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1.0,
                                          color: AppColors.bgLight))),
                              child: const Text('085779908779')),
                          CustomDividers.verySmallDivider(),
                          Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1.0,
                                          color: AppColors.bgLight))),
                              child: const Text('Jl. Raya Bogor, No. 140')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomDividers.smallDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    padding: CustomPadding.p1,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const Center(
                          child: Icon(Icons.map_sharp),
                        ),
                        Text('Address', style: TextStyles.small()),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    padding: CustomPadding.p1,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const Center(
                          child: Icon(Icons.credit_card),
                        ),
                        Text('Payment', style: TextStyles.small()),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    padding: CustomPadding.p1,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const Center(
                          child: Icon(Icons.notifications),
                        ),
                        Text('Notifications', style: TextStyles.small()),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    padding: CustomPadding.p1,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const Center(
                          child: Icon(Icons.settings),
                        ),
                        Text('Settings', style: TextStyles.small()),
                      ],
                    ),
                  ),
                ],
              ),
              CustomDividers.smallDivider(),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: CustomPadding.p1,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          'My Orders',
                          style: TextStyles.h4(color: AppColors.bg),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: CustomPadding.p1,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          'My Favorites',
                          style: TextStyles.h4(color: AppColors.bg),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: CustomPadding.p1,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Privacy Policy',
                          style: TextStyles.h4(color: AppColors.bg),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: CustomPadding.p1,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Terms and Conditions',
                          style: TextStyles.h4(color: AppColors.bg),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: CustomPadding.p1,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Help',
                          style: TextStyles.h4(color: AppColors.bg),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  )),
              CustomDividers.smallDivider(),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text('Send Feedback'),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text('Rate us on the Play Store'),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Logout',
                      style: TextStyles.regular(
                          color: AppColors.danger, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Ionicons.warning_outline),
                            Text('About'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
      ),
    );
  }
}
