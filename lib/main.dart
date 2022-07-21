import 'package:calbayog/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1920, 1081),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
              builder: (context, child) => ResponsiveWrapper.builder(child,
                  minWidth: 480.w,
                  defaultScale: true,
                  breakpoints: [
                    const ResponsiveBreakpoint.resize(450, name: MOBILE),
                    const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                    const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                    const ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
                    const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
                  ],
                  background: Container(color: const Color(0xFFF5F5F5))),
              initialRoute: Routes.home,
              onGenerateRoute: (RouteSettings settings) {
                return Routes.fadeThrough(settings, (context) {
                  switch (settings.name) {
                    case Routes.home:
                      return const HomeView();
                    // case Routes.post:
                    //   return const PostPage();
                    // case Routes.style:
                    //   return const TypographyPage();
                    default:
                      return const SizedBox.shrink();
                  }
                });
              },
            ));
  }
}
