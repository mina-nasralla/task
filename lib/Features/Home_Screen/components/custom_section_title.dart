import 'package:flutter/material.dart';

import '../../../core/style/fonts_style.dart';

class CustomSectionTitle extends StatelessWidget {
  const CustomSectionTitle({
    super.key,
    required this.title,
    required this.number,
  });

  final String title, number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyle.styleSemibold14,
        ),
        const SizedBox(width: 8),
        Text(
          number,
          style: AppStyle.styleRegular10,
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: TextStyle(
                  color: Color(0xff475569),
                  fontSize: 12,
                  fontFamily: 'Poppins-Regular',
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline),
            ))
      ],
    );
  }
}
