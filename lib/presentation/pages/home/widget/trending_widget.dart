import 'package:e_commerce_fashion/common/theme_color.dart';
import 'package:e_commerce_fashion/common/theme_fonts.dart';
import 'package:flutter/material.dart';

class TrendingWidget extends StatelessWidget {
  TrendingWidget({super.key});

  final List<String> _trendingList = [
    "#2021",
    "#spring",
    "#collection",
    "#fall",
    "#dress",
    "#autumncollection",
    "#openfashion"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '@TRENDING',
          style: tenorSansStyle.copyWith(
            fontSize: 18,
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Wrap(
            spacing: 30,
            runSpacing: 16,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: List.generate(
              _trendingList.length,
              (index) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                decoration: const BoxDecoration(
                  color: inputBackgroundColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      30,
                    ),
                  ),
                ),
                child: Text(
                  _trendingList[index],
                  style: tenorSansStyle.copyWith(
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
