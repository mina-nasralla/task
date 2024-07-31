import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/core/models/featured_model.dart';

import '../../../core/style/fonts_style.dart';

class Featureditem extends StatelessWidget {
  const Featureditem({
    super.key,
    required this.featuredModel,
  });

  final FeaturedModel featuredModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 156,
          height: 156,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          clipBehavior: Clip.hardEdge,
          // Add this line to ensure clipping
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: AssetImage(featuredModel.img),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white24),
                          child: const Icon(
                            CupertinoIcons.heart,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 53,
                      height: 26,
                      decoration: BoxDecoration(
                          color: const Color(0xffFDE68A),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Text(
                        'Featured',
                        style: AppStyle.styleRegular10,
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
            width: 156,
            child: Text(featuredModel.name, style: AppStyle.styleRegular12)),
        const SizedBox(height: 4),
        Text('${featuredModel.price} EG', style: AppStyle.styleSemibold14),
        const SizedBox(height: 4),
        Row(
          children: [
            Container(
              width: 30,
              height: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffEFEFEF)),
              child: Center(
                  child: Text(
                featuredModel.status,
                style: AppStyle.styleRegular10,
              )),
            ),
            const SizedBox(width: 4),
            Container(
              width: 30,
              height: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffEFEFEF)),
              child: Center(
                  child: Text(
                '${featuredModel.rate}/10',
                style: AppStyle.styleRegular10,
              )),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          featuredModel.date,
          style: AppStyle.styleRegular10,
        )
      ],
    );
  }
}
