import 'package:flutter/material.dart';
import 'package:task/core/style/fonts_style.dart';

class CustomAd extends StatelessWidget {
  const CustomAd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none, // This allows the image to overflow the container
        children: [
          Container(
            height: 164,
            width: 302,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffE9E9E9),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'AD',
                        style: AppStyle.styleRegular12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nike',
                          style: AppStyle.styleSemibold24b,
                        ),
                        Text(
                          'Free Metcon',
                          style: AppStyle.styleSemibold24g,
                        ),
                        Text(
                          '3000',
                          style: AppStyle.styleSemibold24b,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -15, // Adjust this value to position the shoe image correctly
            left: 90,
            width: 280,
            height: 200, // Adjust this value to position the shoe image correctly
            child: Image.asset(
              'assets/images/Yellow Shoe.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
