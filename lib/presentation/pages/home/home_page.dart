import 'package:e_commerce_fashion/common/theme_color.dart';
import 'package:e_commerce_fashion/common/theme_fonts.dart';
import 'package:e_commerce_fashion/common/theme_image.dart';
import 'package:e_commerce_fashion/presentation/pages/home/widget/arrival_widget.dart';
import 'package:e_commerce_fashion/presentation/pages/home/widget/brand_widget.dart';
import 'package:e_commerce_fashion/presentation/pages/home/widget/collection_widget.dart';
import 'package:e_commerce_fashion/presentation/pages/home/widget/follow_use_widget.dart';
import 'package:e_commerce_fashion/presentation/pages/home/widget/info_fashion_widget.dart';
import 'package:e_commerce_fashion/presentation/pages/home/widget/just_for_you_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widget/trending_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _nameTabBar = [
    "All",
    'Apparel',
    "Dress",
    "Tshirt",
    "Bag",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _nameTabBar.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: backgroundAppBarColor,
          elevation: 0.0,
          title: SvgPicture.asset(icLogo),
          centerTitle: true,
          leading: IconButton(
            icon: SvgPicture.asset(
              icMenu,
              height: 24,
              width: 24,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                icSearch,
                height: 24,
                width: 24,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                icShoppingBag,
                height: 24,
                width: 24,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 650,
                  width: double.infinity,
                  child: Image.asset(
                    banner,
                    fit: BoxFit.cover,
                    height: 650,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 35),
                Text(
                  'NEW ARRIVAL',
                  style: tenorSansStyle.copyWith(
                    fontSize: 18,
                    letterSpacing: 4,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                SvgPicture.asset(
                  icLine,
                ),
                const SizedBox(height: 15),
                ArrivalTabBar(
                  nameTabBar: _nameTabBar,
                ),
                const ArrivalTabBarView(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Explore More',
                      style: tenorSansStyle.copyWith(
                        fontSize: 16,
                        color: titleActiveColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                      splashRadius: 10,
                      onPressed: () {},
                      icon: Image.asset(
                        icForwardArrow,
                        height: 18,
                        width: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                SvgPicture.asset(
                  icLine,
                ),
                const SizedBox(height: 40),
                const BrandWidget(),
                const SizedBox(height: 40),
                SvgPicture.asset(
                  icLine,
                ),
                const SizedBox(height: 47),
                const CollectionWidget(),
                const SizedBox(height: 72),
                Text(
                  'Just for You',
                  style: tenorSansStyle.copyWith(
                    fontSize: 18,
                    letterSpacing: 4,
                  ),
                ),
                const SizedBox(height: 4),
                SvgPicture.asset(
                  icLine,
                ),
                const SizedBox(height: 32),
                const JustForYouWidget(),
                const SizedBox(height: 44),
                TrendingWidget(),
                const SizedBox(height: 22),
                const InfoFashionWidget(),
                const SizedBox(height: 32),
                const FollowUseWidget(),
                const SizedBox(height: 24),
                SvgPicture.asset(
                  icLine,
                ),
                const SizedBox(height: 24),
                Text(
                  'support@openui.design',
                  textAlign: TextAlign.center,
                  style: tenorSansStyle.copyWith(
                    fontSize: 16,
                    color: bodyColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '+60 825 876',
                  style: tenorSansStyle.copyWith(
                    fontSize: 16,
                    color: bodyColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '08:00 - 22:00 - Everyday',
                  style: tenorSansStyle.copyWith(
                    fontSize: 16,
                    color: bodyColor,
                  ),
                ),
                const SizedBox(height: 24),
                SvgPicture.asset(
                  icLine,
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 58),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Aboout",
                          style: tenorSansStyle.copyWith(
                            fontSize: 16,
                            color: titleActiveColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Contact",
                          style: tenorSansStyle.copyWith(
                            fontSize: 16,
                            color: titleActiveColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Blog",
                          style: tenorSansStyle.copyWith(
                            fontSize: 16,
                            color: titleActiveColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  height: 45.25,
                  color: greyColor1,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Copyright?? OpenUI All Rights Reserved.',
                    style: tenorSansStyle.copyWith(
                      fontSize: 14,
                      color: labelColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
