import 'package:flutter/material.dart';

import '../../../core/style/fonts_style.dart';

class locationBar extends StatelessWidget {
  const locationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffE2E8F0))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(Icons.location_on_outlined,color: Color(0xff64748B)),
            const SizedBox(width: 10),
            Text('Alexandria,Egypt',style: AppStyle.styleRegular12,),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded,size: 15,)
          ],
        ),
      ),

    );
  }
}
