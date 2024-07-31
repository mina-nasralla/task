import 'package:flutter/material.dart';
import 'package:task/Features/Home_Screen/components/custom_section_title.dart';

import 'category_section_list.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSectionTitle(
          title: 'Browse Categories',
          number: '15+',
        ),
        SizedBox(height: 16),
        CategorySectionList()
      ],
    );
  }
}
