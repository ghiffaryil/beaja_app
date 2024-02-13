import 'package:beaja/common/components/divider.dart';
import 'package:beaja/common/components/image_rounded.dart';
import 'package:beaja/common/components/navigation_bottom_bar.dart';
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
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = 0;
  }

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
                    height: MediaQuery.of(context).size.height * 0.36,
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
                            margin: const EdgeInsets.only(right: 20),
                            width: 250,
                            child: Column(
                              children: [
                                const RoundedImage(
                                    borderRadius: 20,
                                    width: double.infinity,
                                    fit: BoxFit.fitWidth,
                                    imageUrl:
                                        'https://s41230.pcdn.co/wp-content/uploads/2017/10/vegan-plant-based-news-kfc.jpg',
                                    imageType: 'url'),
                                CustomDividers.smallDivider(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Title of Product',
                                      style: TextStyles.h4(color: AppColors.bg),
                                    ),
                                    Text(
                                      'Category Food',
                                      style: TextStyles.small(
                                        color: AppColors.muted,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Rp 49.000,-',
                                            style: TextStyles.medium(
                                              color: AppColors.primary,
                                            )),
                                        IconButton(
                                          onPressed: () {
                                            // Minus button logic
                                          },
                                          icon: const Icon(
                                            Ionicons.heart_outline,
                                            size: 30,
                                            color: AppColors.danger,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
                            child: Image.network(
                                'http://images.thenorthface.com/is/image/TheNorthFace/236x204_CLR/mens-better-than-naked-jacket-AVMH_LC9_hero.png'));
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
                    height: 10,
                  ),
                  SizedBox(
                      height: 300,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  width: double.infinity,
                                  // height: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const RoundedImage(
                                          borderRadius: 20,
                                          width: double.infinity,
                                          fit: BoxFit.fitWidth,
                                          imageUrl:
                                              'https://s41230.pcdn.co/wp-content/uploads/2017/10/vegan-plant-based-news-kfc.jpg',
                                          imageType: 'url'),
                                      const Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Title of Product'),
                                                Text('Category'),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.star),
                                                Text('4.4')
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        'Rp 16.000,-',
                                        style: TextStyles.large(
                                            color: AppColors.primary),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          })),
                ],
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
