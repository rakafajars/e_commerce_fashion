import 'package:e_commerce_fashion/common/theme_color.dart';
import 'package:e_commerce_fashion/common/theme_fonts.dart';
import 'package:e_commerce_fashion/common/theme_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoFashionWidget extends StatelessWidget {
  const InfoFashionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 465,
      color: greyColor,
      child: Column(
        children: [
          const SizedBox(height: 28),
          SvgPicture.asset(
            icLogo,
            height: 40,
            width: 40,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Text(
              'Making a luxurious lifestyle accessible for a generous group of women is our daily drive.',
              style: tenorSansStyle.copyWith(
                fontSize: 14,
                letterSpacing: 1,
                color: labelColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          SvgPicture.asset(
            icLine,
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      icInfo1,
                      width: 49.77,
                      height: 34.91,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Fast shipping. Free on orders over \$25.',
                      style: tenorSansStyle.copyWith(
                        fontSize: 13,
                        color: labelColor,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 34),
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      icInfo2,
                      width: 52.45,
                      height: 36.8,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Sustainable process from start to finish.',
                      style: tenorSansStyle.copyWith(
                        fontSize: 13,
                        color: labelColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      icInfo3,
                      width: 54.35,
                      height: 38.13,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Unique designs and high-quality materials.',
                      style: tenorSansStyle.copyWith(
                        fontSize: 13,
                        color: labelColor,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 34),
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      icInfo4,
                      width: 54.35,
                      height: 38.13,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Fast shipping. Free on orders over \$25.',
                      style: tenorSansStyle.copyWith(
                        fontSize: 13,
                        color: labelColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 34),
          SvgPicture.asset(
            icTornado,
            height: 39.56,
            width: 66.52,
          ),
        ],
      ),
    );
  }
}
