import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/services/white_space.dart';

class SeventhPage extends StatefulWidget {
  const SeventhPage({super.key});

  @override
  State<SeventhPage> createState() => _SeventhPageState();
}

class _SeventhPageState extends State<SeventhPage> {
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
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 15, 11, 29)),
      child: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(left: 90.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 250.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText(
                                'Prizes and',
                                textStyle: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  color: Colors.white,
                                  fontSize: 32.sp,
                                ),
                              ),
                            ],
                          ),
                          AnimatedTextKit(
                            totalRepeatCount: 2,
                            animatedTexts: [
                              TyperAnimatedText(
                                'Rewards',
                                textStyle: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  color: const Color(0xFFD434FE),
                                  fontSize: 32.sp,
                                ),
                              ),
                            ],
                          ),
                          Text('Highlight of the prizes or rewards for winners and for participants.',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 12.sp))
                              .animate()
                              .fade(duration: 2.seconds)
                              .scale(delay: 0.seconds),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 0.h,
              left: 0.w,
              child: Image.asset(
                'assets/images/Purple-Lens.png',
              )),
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
              top: 0.h,
              left:_animationCompleted ? 280.w : 0.w,
              child: Image.asset(
                'assets/images/sata gra.png',
              )),
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
              bottom: 0.h,
              left: _animationCompleted ? 280.w : 0.w,
              child: Image.asset('assets/images/star.png')),
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
              top: _animationCompleted ? 200.h : 0.h,
              left: _animationCompleted ? 680.w : 400.w,
              child: Image.asset('assets/images/star.png')),
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
              top: _animationCompleted ? 120.h : 0.h,
              right: _animationCompleted ? 400.w : 0.w,
              child: Image.asset('assets/images/sata gra.png')),
          Positioned(
              top: 260.h,
              right: 220.w,
              child: Image.asset('assets/images/star.png')),
          Positioned(
            top: 0.h,
            right: 0.w,
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
              top: 180.h,
              left: 100.w,
              child: Image.asset(
                'assets/images/cup.png',
                width: 400.w,
                height: 400.h,
              )).animate().fade(duration: 3.seconds).scale(delay: 1.seconds),

          // The Second Position
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
              top: _animationCompleted ? 360.h : 300.h,
              left: 600.w,
              child: Container(
                height: 200.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFD434FE).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '2nd',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Runner',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16.sp,
                        )),
                    Text('N300,000',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFD434FE),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold)),
                    const WhiteSpace(
                      height: 30,
                    )
                  ],
                ),
              )),
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
              top: _animationCompleted ? 280.h : 200.h,
              left: 600.w,
              child: Image.asset(
                'assets/images/silver_medal 1.png',
                width: 150.w,
                height: 150.h,
              )),

          // The first Position
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
              top: _animationCompleted ? 370.h : 270.h,
              left: 780.w,
              child: Container(
                height: 210.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF903AFF).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '1st',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Runner',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16.sp,
                        )),
                    Text('N400,000',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFF903AFF),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold)),
                    const WhiteSpace(
                      height: 30,
                    )
                  ],
                ),
              )),
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
              top: _animationCompleted ? 220.h : 180.h,
              left: 740.w,
              child: Image.asset(
                'assets/images/gold_medal 1.png',
                width: 230.w,
                height: 230.h,
              )),

          // The third Position
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
              top: _animationCompleted ? 360.h : 300.h,
              left: 960.w,
              child: Container(
                height: 200.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFD434FE).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '3rd',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Runner',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16.sp,
                        )),
                    Text('N150,000',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFD434FE),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold)),
                    const WhiteSpace(
                      height: 30,
                    )
                  ],
                ),
              )),
         AnimatedPositioned(
            duration: const Duration(seconds: 4),
              top: _animationCompleted ? 280.h : 200.h,
              left: 960.w,
              child: Image.asset(
                'assets/images/gold_medal 1.png',
                width: 150.w,
                height: 150.h,
              )),
        ]),
      ),
    );
  }
}
