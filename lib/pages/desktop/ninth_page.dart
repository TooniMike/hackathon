import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/services/white_space.dart';
import 'package:hackathon/widgets/button.dart';
import 'package:hackathon/widgets/custom_font.dart';

class NinthPage extends StatefulWidget {
  const NinthPage({super.key});

  @override
  State<NinthPage> createState() => _NinthPageState();
}

class _NinthPageState extends State<NinthPage> {
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
        bottom: 0.h,
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
              'assets/images/Lens-left.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90.h, left: 90.w, bottom: 10.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 0.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Privacy Policy and',
                              style: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 32.sp,
                                  color: Colors.white)),
                          AnimatedTextKit(
                            totalRepeatCount: 2,
                            animatedTexts: [
                              TyperAnimatedText(
                                'Terms',
                                textStyle: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  color: const Color(0xFFD434FE),
                                  fontSize: 32.sp,
                                ),
                              ),
                            ],
                          ),
                          Text('Last updated on September 12, 2023.',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14.sp)).animate()
                        .fade(duration: 2.seconds)
                        .scale(delay: 1.seconds),
                          const WhiteSpace(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .45,
                            child: Text(
                                'Below are our privacy & policy, which outline a lot of goodies. it’s our aim to always take of our participant',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold)).animate()
                        .fade(duration: 2.seconds)
                        .scale(delay: 0.seconds),
                          ),
                          const WhiteSpace(
                            height: 50,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: 600.w,
                            decoration: BoxDecoration(
                                color:
                                    const Color(0xFFD9D9D9).withOpacity(0.05),
                                border:
                                    Border.all(color: const Color(0xFFD434FE)),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 60.w, vertical: 60.0.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'At getlinked tech Hackathon 1.0, we value your privacy and are committed to protecting your personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your data when you participate in our tech hackathon event. By participating in our event, you consent to the practices described in this policy.',
                                    style: CustomFont.customFontWhite(16.0),
                                  ),
                                  const WhiteSpace(
                                    height: 20,
                                  ),
                                  Text(
                                    'Licensing Policy',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xFFD434FE),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                      'Here are terms of our Standard License:',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start),
                                  const WhiteSpace(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/images/mark.png'),
                                      const WhiteSpace(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .3,
                                        child: Text(
                                          'The Standard License grants you a non-exclusive right to navigate and register for our event',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 5,
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const WhiteSpace(
                                    height: 40,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/images/mark.png'),
                                      const WhiteSpace(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .3,
                                        child: Text(
                                            'You are licensed to use the item available at any free source sites, for your project developement',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 5,
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14.sp)),
                                      )
                                    ],
                                  ),
                                  const WhiteSpace(
                                    height: 60,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Button(text: 'Register'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset('assets/images/manLock.png', width: 500.w, height: 500.h)
              .animate()
              .fade(duration: 2.seconds)
              .scale(delay: 1.seconds),
        ],
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
          top: _animationCompleted ? 60.h : 0.h,
          right: _animationCompleted ? 20.w : 0.h,
          child: Image.asset(
            'assets/images/Vector.png',
            width: 600.w,
            height: 600.h,
          )),
      Positioned(
          top: 180.h,
          left: 400.w,
          child: Image.asset(
            'assets/images/star pu.png',
            width: 15.w,
            height: 15.h,
          )),
      Positioned(
          top: 220.h,
          left: 700.w,
          child: Image.asset(
            'assets/images/sata gra.png',
            width: 15.w,
            height: 15.h,
          )),
      Positioned(
          top: 220.h,
          right: 150.w,
          child: Image.asset(
            'assets/images/star.png',
            width: 15.w,
            height: 15.h,
          )),
      Positioned(
          top: 800.h,
          left: 14.w,
          child: Image.asset(
            'assets/images/star pu.png',
            width: 15.w,
            height: 15.h,
          )),
      Positioned(
          top: 800.h,
          right: 14.w,
          child: Image.asset(
            'assets/images/star2.png',
            width: 15.w,
            height: 15.h,
          )),
    ]);
  }
}
