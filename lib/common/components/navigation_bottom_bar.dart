import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/pages/homepage/homepage.dart';
import 'package:beaja/pages/homepage/search.dart';
import 'package:beaja/pages/product/product_detail.dart';
import 'package:beaja/pages/product/product_list.dart';
import 'package:beaja/pages/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomMenu extends StatefulWidget {
  final int selectedIndex;
  const BottomMenu({super.key, this.selectedIndex = 0});
  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  @override
  void initState() {
    super.initState();
  }

  void onClicked(int index) {
    if (widget.selectedIndex == index) {
      return;
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute<void>(builder: (BuildContext context) {
        return pageTarget[index];
      }));
    }
  }

  final List<Widget> pageTarget = [
    const HomePage(),
    const SearchPage(),
    const ProductListPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: AppColors.white,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: widget.selectedIndex == 0
                  ? const Icon(
                      Ionicons.filter_circle,
                      color: AppColors.primary,
                      size: 31,
                    )
                  : const Icon(
                      Ionicons.filter_circle_outline,
                      color: AppColors.bg,
                      size: 31,
                    ),
              label: 'Ikut Survei',
            ),
            BottomNavigationBarItem(
              icon: widget.selectedIndex == 1
                  ? const Icon(
                      Ionicons.search_circle,
                      color: AppColors.primary,
                      size: 32,
                    )
                  : const Icon(
                      Ionicons.search_circle_outline,
                      color: AppColors.bg,
                      size: 32,
                    ),
              label: 'Akun',
            ),
            BottomNavigationBarItem(
              icon: widget.selectedIndex == 2
                  ? const Icon(
                      Ionicons.bag_handle,
                      color: AppColors.primary,
                      size: 31,
                    )
                  : const Icon(
                      Ionicons.bag_outline,
                      color: AppColors.bg,
                      size: 31,
                    ),
              label: 'Akun',
            ),
            BottomNavigationBarItem(
              icon: widget.selectedIndex == 3
                  ? const Icon(
                      Ionicons.person_circle,
                      color: AppColors.primary,
                      size: 31,
                    )
                  : const Icon(
                      Ionicons.person_circle_outline,
                      color: AppColors.bg,
                      size: 31,
                    ),
              label: 'Akun',
            ),
          ],
          currentIndex: widget.selectedIndex,
          onTap: onClicked,
          selectedItemColor: AppColors.primary,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
