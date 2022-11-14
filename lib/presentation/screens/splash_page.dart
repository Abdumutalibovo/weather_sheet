import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_sheet/presentation/screens/home_page.dart';

import '../utils/images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    onNextPage();
  }

  onNextPage() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(_createRoute());
    });
  }
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),

      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.w,
              height: 300.h,
              child: Image.asset(AppImages.im_splash),
            ),
            const Center(
                child: Text(
              "Weather Sheetga hush kelibsiz!",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            )),
          ],
        ),
      ),
    );
  }
}
