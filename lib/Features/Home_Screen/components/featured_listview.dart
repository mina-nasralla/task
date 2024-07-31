import 'package:flutter/material.dart';

import '../../../core/models/featured_model.dart';
import 'featured_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({
    super.key, required this.items,
  });

  final List<FeaturedModel> items;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 282,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) =>  Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Featureditem(featuredModel: items[index],),
            )));
  }
}

