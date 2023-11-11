import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/services/white_space.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
    bool _animationCompleted = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAnimation();
    });
  }

  void _startAnimation() {
    setState(() {
      _animationCompleted = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 90.w),
      child: Stack(children: [
        AnimatedPositioned(
          duration: const Duration(seconds: 3),
          top:_animationCompleted ? 80.h : 10.h,
          right:_animationCompleted ? 100.w : 0.w,
          child: Image.asset(
            'assets/images/Ellipse 1.png',
            height: 100.h,
            width: 100.w,
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const WhiteSpace(
            width: 40,
          ),
          Container(
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
              ),
            ),
          ),
          Image.asset(
            'assets/images/woman.png',
            width: 500.w,
            height: 500.h,
          ).animate().fade(duration: 1.seconds).scale(delay: 0.seconds),
        ]),
        Positioned(
          top: 105.h,
          left: 1.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rules and',
                  style: TextStyle(
                      fontFamily: 'ClashDisplay',
                      fontSize: 32.sp,
                      color: Colors.white)).animate().fade(duration: 1.seconds).scale(delay: 0.seconds),
              Text('Guidelines',
                  style: TextStyle(
                      fontFamily: 'ClashDisplay',
                      fontSize: 32.sp,
                      color: const Color(0xFFD434FE))).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
              Text(
                  'Our tech hackathon is a melting pot of visionaries, and its purpose is as\nclear as day: to shape the future. Whether you\'re a coding genius, a\ndesign maverick, or a concept wizard, you\'ll have the chance to transform\nyour ideas into reality. Solving real-world problems, pushing the boundaries\nof technology, and creating solutions that can change the world,\nthat\'s what we\'re all about!',
                  style: GoogleFonts.montserrat(
                      color: Colors.white, fontSize: 14.sp)),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
          top:_animationCompleted ? 100.h : 10.h,
          left: _animationCompleted ? 300.w : 100.w,
          child: Image.asset('assets/images/star2.png', width: 15.w, height: 15.h,),
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
          top: 300.h,
          left: _animationCompleted ? 600.w : 60.w,
          child: Image.asset('assets/images/star.png'),
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 5),
          right:_animationCompleted ? 1.h : 0.w,
          top: _animationCompleted ? 1.w : 0.w,
          child: Image.asset('assets/images/Straight-Lens.png'),
        ),
      ]),
    );
  }
}
