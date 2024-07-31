import 'package:flutter/material.dart';
import 'components/category_section.dart';
import 'components/custom_AD.dart';
import 'components/custom_appbar.dart';
import 'components/featured_section.dart';
import 'components/locationbar.dart';
import 'components/mobile_section.dart';
import 'components/most_viewed.dart';

class BodyView extends StatelessWidget {
  const BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            locationBar(),
            SizedBox(height: 24),
            CategorySection(),
            SizedBox(height: 16),
            FeaturedSection(),
            SizedBox(height: 16),
            CustomAd(),
            SizedBox(height: 16),
            MobileSection(),
            SizedBox(height: 16),
            MostViewed(),
          ],
        ),
      ),
    );
  }
}

