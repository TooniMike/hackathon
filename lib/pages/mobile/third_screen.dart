import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
    return Stack(children: [
      Positioned(
        right: 1.sp,
        top: 50.sp,
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
              'assets/images/Straight-Lens.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Positioned(
        right: 1.sp,
        bottom: 0.sp,
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
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 30.sp, right: 30.sp, bottom: 60.sp),
        child: Column(
          children: [
            Image.asset(
              'assets/images/woman.png',
            ).animate().fade(duration: 1.seconds).scale(delay: 0.seconds),
            SizedBox(
              height: 20.sp,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Rules and',
                        style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 26.sp,
                            color: Colors.white))
                    .animate()
                    .fade(duration: 1.seconds)
                    .scale(delay: 0.seconds),
                AnimatedTextKit(
                  totalRepeatCount: 2,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Guidelines',
                      textStyle: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 20.sp,
                        color: const Color(0xFFD434FE),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'Our tech hackathon is a melting pot of visionaries, and its purpose is as clear as day: to shape the future. Whether you\'re a coding genius, a design maverick, or a concept wizard, you\'ll have the chance to transform your ideas into reality. Solving real-world problems, pushing the boundaries of technology, and creating solutions that can change the world, that\'s what we\'re all about!',
                  style: GoogleFonts.montserrat(
                      color: Colors.white, fontSize: 14.sp),
                  textAlign: TextAlign.center,
                ).animate().fade(duration: 1.seconds).scale(delay: 0.seconds),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.sp, top: 20.sp),
              child: Image.asset(
                'assets/images/star.png',
                width: 20.sp,
                height: 20.sp,
              ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
            )
          ],
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: _animationCompleted ? 140.sp : 80.sp,
        left: _animationCompleted ? 50.sp : 00.sp,
        child: Image.asset(
          'assets/images/star.png',
          width: 20.sp,
          height: 20.sp,
        ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: _animationCompleted ? 350.sp : 250,
        right: _animationCompleted ? 70.sp : 0.sp,
        child: Image.asset(
          'assets/images/star2.png',
          width: 20.sp,
          height: 20.sp,
        ),
      ),
    ]);
  }
}
