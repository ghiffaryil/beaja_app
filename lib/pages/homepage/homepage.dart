import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/styles.dart';
import 'package:beaja/pages/product/product_detail.dart';
import 'package:beaja/pages/product/product_list.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: AppColors.white,
          surfaceTintColor: AppColors.white,
          automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Lisa',
                style: TextStyles.large(color: AppColors.primary),
              ),
              Row(
                children: [
                  const Icon(
                    Ionicons.location_outline,
                    color: AppColors.secondary,
                    size: 15,
                  ),
                  Text(
                    '  Jl. Raya Bogor, 21',
                    style: TextStyles.small(),
                  ),
                ],
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Ionicons.chatbox_ellipses_outline),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Ionicons.search_outline),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Ionicons.heart_outline,
                color: AppColors.danger,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular',
                          style: TextStyles.large(),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const ProductListPage();
                            }));
                          },
                          child: Text(
                            'See all',
                            style: TextStyles.small(color: AppColors.primary),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ProductDetailPage();
                              }));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 250,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended',
                          style: TextStyles.large(),
                        ),
                        Text(
                          'See all',
                          style: TextStyles.small(color: AppColors.primary),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Makanan Terlaris',
                          style: TextStyles.large(),
                        ),
                        Text(
                          'See all',
                          style: TextStyles.small(color: AppColors.primary),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: 300,
                        child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      width: double.infinity,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: AppColors.primary,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Text('AAAA')),
                                ],
                              );
                            })),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
