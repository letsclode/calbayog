import 'package:calbayog/views/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/components.dart';
import '../components/spacer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 196.h,
                width: MediaQuery.of(context).size.width.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/canvas.png"),
                        fit: BoxFit.fill)),
              ),
              Container(
                color: Colors.green,
                width: 600.w,
                height: 100.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 132.w,
                      height: 132.h,
                    ),
                    horizontalMedium,
                    SizedBox(
                      height: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Republic of the Philippines",
                            style: headlineSecondaryTextStyle,
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Text(
                                  "City Government of Calbayog".toUpperCase(),
                                  style: headlineTextStyle.copyWith(),
                                ),
                                const SizedBox(
                                    width: 710,
                                    child: Divider(
                                      thickness: 3,
                                      color: textPrimary,
                                    ))
                              ],
                            ),
                          ),
                          Text(
                            "Province of Samar",
                            style: headlineSecondaryTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const NavigationHeader(),
          Stack(
            children: [
              Column(
                children: [
                  Container(
                      height: 821,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/church.png")))),
                  Container(
                    height: 1464,
                    width: 1464,
                    color: textPrimary,
                  )
                ],
              ),
              const SizedBox(
                  width: 1256, height: 492, child: Card(color: cardColor))
            ],
          )
        ],
      ),
    );
  }
}
