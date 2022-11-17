import 'package:e_commerce_fashion/common/theme_color.dart';
import 'package:e_commerce_fashion/common/theme_fonts.dart';
import 'package:e_commerce_fashion/common/theme_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
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
            )
          ],
        ),
      ),
    );
  }
}
