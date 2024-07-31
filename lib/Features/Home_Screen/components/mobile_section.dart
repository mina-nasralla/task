import 'package:flutter/material.dart';
import 'package:task/Features/Home_Screen/components/custom_section_title.dart';
import '../../../core/models/featured_model.dart';
import 'featured_listview.dart';

class MobileSection extends StatelessWidget {
  const MobileSection({
    super.key,
  });

  static const items = [
    FeaturedModel(img: 'assets/images/phon2.jpg', name: 'Iphone 12 Pro Max', price: '25 000', status: 'new', rate: '9', date: '22 sep 2024'),
    FeaturedModel(img: 'assets/images/iphon14.jpg', name: 'Iphone 14 Pro Max', price: '30 000', status: 'Used', rate: '8', date: '22 sep 2024'),
    FeaturedModel(img: 'assets/images/phone4.jpg', name: 'Iphone 14 Pro Max', price: '30,000', status: 'new', rate: '10', date: '22 sep 2024'),
    FeaturedModel(img: 'assets/images/realme-mobiles.jpg', name: 'realme', price: '20 000', status: 'new', rate: '8', date: '22 sep 2024'),
  ];
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSectionTitle(
          title: 'Mobile',
          number: '100+',
        ),
        SizedBox(height: 16),
        FeaturedListView(items:items,)
      ],
    );
  }
}
