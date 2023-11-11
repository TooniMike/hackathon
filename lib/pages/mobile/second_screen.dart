import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.sp, left: 30.sp, right: 30.sp, bottom: 60.sp),
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/the big idea 1.png',
            ).animate().fade(duration: 2.seconds).scale(delay: 2.seconds),
            Image.asset(
              'assets/images/arrow.png',
            ),
            SizedBox(
              height: 20.sp,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Introduction to getlinked',
                textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 26.sp,
                        color: Colors.white)).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                Text('tech Hackathon 1.0',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 20.sp,
                        color: const Color(0xFFD434FE))).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'Our tech hackathon is a melting pot of visionaries, and its purpose is as clear as day: to shape the future. Whether you\'re a coding genius, a design maverick, or a concept wizard, you\'ll have the chance to transform your ideas into reality. Solving real-world problems, pushing the boundaries of technology, and creating solutions that can change the world, that\'s what we\'re all about!',
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 14.sp),
                  textAlign: TextAlign.center,
                ).animate()
              .fade(duration: 2.seconds)
              .scale(delay: 0.seconds),
              ],
            ),
          ],
        ),
        Positioned(
          top: 140.sp,
          left: 0,
          child: Image.asset(
            'assets/images/sata gra.png',
            width: 20.sp,
            height: 20.sp,
          ).animate()
              .fade(duration: 4.seconds)
              .scale(delay: 1.seconds),
        ),
        Positioned(
          top: 470.sp,
          right: 20.sp,
          child: Image.asset(
            'assets/images/star pu.png',
            width: 20.sp,
            height: 20.sp,
          ).animate()
              .fade(duration: 4.seconds)
              .scale(delay: 1.seconds),
        ),
      ]),
    );
  }
}
