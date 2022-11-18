import 'package:e_commerce_fashion/common/theme_color.dart';
import 'package:e_commerce_fashion/common/theme_fonts.dart';
import 'package:e_commerce_fashion/common/theme_image.dart';
import 'package:flutter/material.dart';

class ArrivalTabBar extends StatelessWidget {
  final List<String> nameTabBar;
  const ArrivalTabBar({super.key, required this.nameTabBar});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: TabBar(
        tabs: List.generate(
          nameTabBar.length,
          (index) => Tab(
            text: nameTabBar[index],
          ),
        ),
        labelColor: titleActiveColor,
        unselectedLabelColor: placeHolderColor,
        indicatorColor: secondaryColor,
        labelStyle: tenorSansStyle.copyWith(
          fontSize: 14,
          letterSpacing: 1,
        ),
        isScrollable: true,
      ),
    );
  }
}

class ArrivalTabBarView extends StatelessWidget {
  const ArrivalTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 570,
      child: TabBarView(
        children: [
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(
              top: 13,
              left: 16,
              right: 16,
            ),
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1 / 1.6,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, int int) {
              return SizedBox(
                height: 280.16,
                child: Column(
                  children: [
                    Image.asset(
                      icProduct,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '21WN reversible angora cardigan',
                      style: tenorSansStyle.copyWith(
                        fontSize: 14,
                        color: bodyColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$120',
                      style: tenorSansStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
