import 'package:beaja/common/components/elevated_button.dart';
import 'package:beaja/common/components/navigation_bottom_bar.dart';
import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/padding.dart';
import 'package:beaja/common/constants/styles/styles.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  int selectedIndex = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        title: const Text('Product List'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
        padding: CustomPadding.pdefault,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.6,
          ),
          itemCount: 9,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.bg.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      'https://s41230.pcdn.co/wp-content/uploads/2017/10/vegan-plant-based-news-kfc.jpg',
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Category List $index',
                                style: TextStyles.regular(
                                    color: AppColors.bg,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Category $index',
                                style: TextStyles.small(
                                  color: AppColors.bg,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_outlined,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: ButtonFilled.custom(
                        text: 'Add to Cart',
                        height: 30,
                        fontSize: 14,
                        backgroundColor: AppColors.primary,
                        textColor: AppColors.white,
                        onPressed: () {}),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
      ),
    );
  }
}
