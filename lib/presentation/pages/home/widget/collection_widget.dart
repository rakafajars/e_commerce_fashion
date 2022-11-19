import 'package:e_commerce_fashion/common/theme_color.dart';
import 'package:e_commerce_fashion/common/theme_fonts.dart';
import 'package:e_commerce_fashion/common/theme_image.dart';
import 'package:flutter/cupertino.dart';

class CollectionWidget extends StatelessWidget {
  const CollectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'COLLECTIONS',
          style: tenorSansStyle.copyWith(
            fontSize: 18,
            color: titleActiveColor,
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 240,
          width: double.infinity,
          child: Image.asset(
            bannerCollection1,
            fit: BoxFit.fill,
            height: 240,
            width: double.infinity,
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: 260,
          height: 296,
          child: Image.asset(
            bannerCollection2,
            width: 260,
            height: 296,
          ),
        ),
      ],
    );
  }
}
