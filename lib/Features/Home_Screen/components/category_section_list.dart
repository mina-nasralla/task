import 'package:flutter/material.dart';

import '../../../core/models/category_model.dart';
import 'category_section_items_view.dart';

class CategorySectionList extends StatelessWidget {
  const CategorySectionList({
    super.key,
  });

  static const items = [
    CategoryModel(img: 'assets/images/category mobile.png', title: 'Mobiles'),
    CategoryModel(img: 'assets/images/house.png',title: 'Property \n for Sale'),
    CategoryModel(img: 'assets/images/vehicles.png', title: 'Vehicles'),
    CategoryModel(img: 'assets/images/motor.png', title: 'Motorcars'),
    CategoryModel(img: 'assets/images/jop.png', title: 'Job'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 24),
                child: CategorySectionItemsView(
                  categoryModel: items[index],
                ),
              )),
    );
  }
}
