import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const  Image(image: AssetImage('assets/images/logo.png'),width: 74,height: 74,),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffE2E8F0))
          ),
          child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.search,color: Color(0xff0F172A),)),
        ),
        const SizedBox(width: 12),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffE2E8F0))
          ),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_active_outlined,color: Color(0xff0FA958),)),
        ),
      ],
    );
  }
}
