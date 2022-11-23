import 'package:e_commerce_fashion/common/theme_color.dart';
import 'package:e_commerce_fashion/common/theme_fonts.dart';
import 'package:e_commerce_fashion/common/theme_image.dart';
import 'package:flutter/material.dart';

class JustForYouWidget extends StatelessWidget {
  const JustForYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.only(
          left: 16,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              height: 390,
              width: 255,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 311.64,
                    width: 254.89,
                    child: Image.asset(
                      icJustForYou,
                      fit: BoxFit.fill,
                      height: 311.64,
                      width: 254.89,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Harris Tweed Three button Jacket',
                    style: tenorSansStyle.copyWith(
                      fontSize: 16,
                      color: bodyColor,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$120',
                    style: tenorSansStyle.copyWith(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
