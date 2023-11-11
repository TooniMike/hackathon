import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../services/white_space.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60.h, right: 40.w, left: 40.h),
      child: Stack(children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          const WhiteSpace(
            width: 40,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/the big idea 1.png',
                width: 400.w,
                height: 400.h,
              ).animate().fade(duration: 1.seconds).scale(delay: 0.seconds),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Introduction to getlinked',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 32.sp,
                        color: Colors.white),
                  ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                  Text(
                    'tech Hackathon 1.0',
                    style: TextStyle(
                      fontFamily: 'ClashDisplay',
                      fontSize: 32.sp,
                      color: const Color(0xFFD434FE),
                    ),
                  ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Text(
                      'Our tech hackathon is a melting pot of visionaries, and its purpose is as clear as day: to shape the future. Whether you\'re a coding genius, a design maverick, or a concept wizard, you\'ll have the chance to transform your ideas into reality. Solving real-world problems, pushing the boundaries of technology, and creating solutions that can change the world, that\'s what we\'re all about!',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 20,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ],
          )
        ]),
        Positioned(
          top: 195.h,
          left: 200.w,
          child: Text('The Big\nIdea!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp))
              .animate()
              .fade(duration: 1.seconds)
              .scale(delay: 1.seconds),
        ),
        Positioned(
          top: 140.h,
          left: 0.w,
          child: Image.asset('assets/images/sata gra.png', width: 15.w, height: 15.h,)
              .animate()
              .fade(duration: 4.seconds)
              .scale(delay: 1.seconds),
        ),
        Positioned(
          top: 180.h,
          right: 20.w,
          child: Image.asset('assets/images/star pu.png', width: 15.w, height: 15.h,)
              .animate()
              .fade(duration: 3.seconds)
              .scale(delay: 1.seconds),
        ),
        Positioned(
          top: 345.h,
          left: 430.w,
          child: Image.asset('assets/images/arrow.png')
              .animate()
              .fade(duration: 3.seconds)
              .scale(delay: 1.seconds),
        ),
        Positioned(
          top: 350.h,
          left: 0.w,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF150E28).withOpacity(0.2),
                  offset: const Offset(0, 4),
                  blurRadius: 6.r,
                ),
              ],
            ),
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/Purple-Lens.png',
                height: 500.h,
                width: 500.w,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
