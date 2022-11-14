import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    double myHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
          width: myWidth,
          height: myHeight,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              AppImages.im_background,
            ),
            fit: BoxFit.cover,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 84.h,
              ),
              const Text(
                "Montreal",
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                " 19°",
                style: TextStyle(
                    fontSize: 96.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                ),
              ),
            ],
          )),
    );
  }
}
