import 'package:beaja/common/components/divider.dart';
import 'package:beaja/common/components/navigation_bottom_bar.dart';
import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/padding.dart';
import 'package:beaja/common/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int selectedIndex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        title: const Text('Search'),
      ),
      body: Container(
        padding: CustomPadding.pdefault,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDividers.smallDivider(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search Food, Restaurants etc.',
                hintStyle: TextStyle(
                    color: AppColors.light, fontWeight: FontWeight.normal),
                prefixIcon: Icon(
                  Ionicons.search,
                  color: AppColors.primary,
                ),
              ),
            ),
            CustomDividers.smallDivider(),
            const Text(
              'Filter by Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            CustomDividers.smallDivider(),
            Expanded(
              // height: 100,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Container(
                    // width: 70,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.bgLight,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://pluspng.com/img-png/food-png--1400.png',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Category $index',
                            style: TextStyles.verySmall(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
      ),
    );
  }
}
