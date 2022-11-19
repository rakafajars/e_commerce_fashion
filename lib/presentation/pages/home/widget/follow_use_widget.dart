import 'package:e_commerce_fashion/common/theme_color.dart';
import 'package:e_commerce_fashion/common/theme_fonts.dart';
import 'package:e_commerce_fashion/common/theme_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FollowUseWidget extends StatelessWidget {
  const FollowUseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'FOLLOW US',
          style: tenorSansStyle.copyWith(
            fontSize: 18,
            letterSpacing: 4,
            color: titleActiveColor,
          ),
        ),
        const SizedBox(height: 16),
        Image.asset(
          icInstagram,
          height: 24,
          width: 24,
        ),
        const SizedBox(height: 18),
        SizedBox(
          height: 450,
          width: double.infinity,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(
              top: 13,
              left: 16,
              right: 16,
            ),
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1 / 1.1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 1,
            ),
            itemBuilder: (context, int int) {
              return SizedBox(
                height: 164,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      icPeopleIg,
                      height: 164,
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      child: Text(
                        '@_jihyn',
                        style: tenorSansStyle.copyWith(
                          fontSize: 14,
                          color: offWhiteColor,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 110),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                icTwitter,
              ),
              SvgPicture.asset(
                icInstagramBlack,
              ),
              SvgPicture.asset(
                icYoutube,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
