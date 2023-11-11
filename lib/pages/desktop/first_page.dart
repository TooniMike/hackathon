import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/button.dart';
import 'package:hackathon/widgets/custom_font.dart';

import '../../services/white_space.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Stack(children: [
                  Image.asset('assets/images/metrix.png'),
                  Positioned(
                    top: -120.h,
                    left: -30.w,
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
                          'assets/images/flare_len01.png',
                          height: 800.h,
                          width: 800.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    right: 50.w,
                    child: AnimatedTextKit(
                      totalRepeatCount: 2,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Igniting a Revolution in HR Innovation',
                          textStyle: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 28.sp,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(seconds: 4),
                    top: 60.h,
                    right: _animationCompleted ? 60.w : 0.w,
                    child: Image.asset('assets/images/vector 4.png'),
                  ),
                  Positioned(
                    top: 60.h,
                    left: 90.w,
                    child: Image.asset('assets/images/star.png')
                        .animate()
                        .fade(duration: 7.seconds)
                        .scale(delay: 4.seconds),
                  ),
                  Positioned(
                    top: 100.h,
                    right: 600.w,
                    child: Image.asset('assets/images/star2.png')
                        .animate()
                        .fade(duration: 5.seconds)
                        .scale(delay: 4.seconds),
                  ),
                  Positioned(
                    top: 100.h,
                    right: 0.w,
                    child: Image.asset(
                      'assets/images/flare_len01.png',
                      width: 600,
                      height: 600,
                    )..animate()
                        .fade(duration: 3.seconds)
                        .scale(delay: 1.seconds),
                  ),
                  AnimatedPositioned(
                      duration: const Duration(seconds: 3),
                      top: _animationCompleted ? 100.h : 0.h,
                      right: _animationCompleted ? 0.w : 10.w,
                      child: Image.asset('assets/images/man.png')),
                  Positioned(
                    top: 100.h,
                    right: 30.w,
                    child: Image.asset('assets/images/network.png')
                        .animate()
                        .fade(duration: 2.seconds)
                        .scale(delay: 1.seconds),
                  ),
                  Positioned(
                    top: 155.h,
                    left: 370.w,
                    child: Image.asset('assets/images/Bulb.png')
                        .animate()
                        .fade(duration: 4.seconds)
                        .scale(delay: 1.seconds),
                  ),
                  Positioned(
                    top: 500.h,
                    left: 400.w,
                    child: Image.asset('assets/images/star2.png')
                        .animate()
                        .fade(duration: 5.seconds)
                        .scale(delay: 2.seconds),
                  ),
                  Positioned(
                    top: 200.h,
                    left: 0.w,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'getlinked Tech',
                                  style: TextStyle(
                                    fontFamily: 'ClashDisplay',
                                    color: Colors.white,
                                    fontSize: 58.sp,
                                  ),
                                )
                                    .animate()
                                    .fade(duration: 2.seconds)
                                    .scale(delay: 500.milliseconds),
                                Row(
                                  children: [
                                    AnimatedTextKit(
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          'Hackathon ',
                                          curve: Curves.bounceIn,
                                          speed:
                                              const Duration(milliseconds: 700),
                                          textStyle: TextStyle(
                                            fontFamily: 'ClashDisplay',
                                            color: Colors.white,
                                            fontSize: 58.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text('1.0',
                                        style: TextStyle(
                                            fontFamily: 'ClashDisplay',
                                            fontSize: 58.sp,
                                            color: const Color(0xFFD434FE))),
                                    Image.asset('assets/images/chain.png'),
                                    Image.asset('assets/images/light.png')
                                        .animate()
                                        .fade(duration: 3.seconds)
                                        .scale(delay: 2.seconds),
                                  ],
                                )
                              ],
                            ),
                            const WhiteSpace(
                              height: 10,
                            ),
                            Text(
                              'Participate in getlinked tech Hackathon 2023 stand \n a chance to win a Big prize',
                              style: CustomFont.customFontWhite(16.0.sp),
                            ),
                            const WhiteSpace(
                              height: 15,
                            ),
                            const Button(text: 'Register')
                                .animate()
                                .fadeIn(duration: 3.seconds)
                                .scale(delay: 2.seconds),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 600.h,
                    left: 0.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              '00',
                              style: GoogleFonts.unicaOne(
                                  color: Colors.white, fontSize: 100.sp),
                            ),
                            Text(
                              'H',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 10.sp),
                            ),
                            const WhiteSpace(
                              width: 20,
                            ),
                            Text(
                              '00',
                              style: GoogleFonts.unicaOne(
                                  color: Colors.white, fontSize: 100.sp),
                            ),
                            Text(
                              'M',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 10.sp),
                            ),
                            const WhiteSpace(
                              width: 20,
                            ),
                            Text(
                              '00',
                              style: GoogleFonts.unicaOne(
                                  color: Colors.white, fontSize: 100.sp),
                            ),
                            Text(
                              'S',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
