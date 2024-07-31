import 'package:flutter/material.dart';
import '../../../core/models/featured_model.dart';
import 'featured_listview.dart';
import 'custom_section_title.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    super.key,
  });
  static const items = [
    FeaturedModel(img: 'assets/images/macbook.jpg', name: 'Macbook 14', price: '30 000', status: 'new', rate: '10', date: '22 sep 2024'),
    FeaturedModel(img: 'assets/images/iphon14.jpg', name: 'Iphone 14 Pro Max', price: '30 000', status: 'Used', rate: '8', date: '22 sep 2024'),
    FeaturedModel(img: 'assets/images/suzuky.png', name: 'Suzuki K42', price: '300,000', status: 'new', rate: '10', date: '22 sep 2024'),
    FeaturedModel(img: 'assets/images/sony.jpg', name: 'Sony Ultra Sonic headphones', price: '2000', status: 'new', rate: '10', date: '22 sep 2024'),
  ];

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSectionTitle(
          title: 'Featured',
          number: '10+',
        ),
        SizedBox(height: 16),
        FeaturedListView(items:items,)
      ],
    );
  }
}
