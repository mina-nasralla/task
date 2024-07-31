import 'package:flutter/material.dart';

import '../../../core/models/category_model.dart';
import '../../../core/style/fonts_style.dart';

class CategorySectionItemsView extends StatelessWidget {
  const CategorySectionItemsView({
    super.key, required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: CircleAvatar(
            child: Image(
              image: AssetImage(categoryModel.img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(categoryModel.title,
          style: AppStyle.styleRegular10,
        )
      ],
    );
  }
}
