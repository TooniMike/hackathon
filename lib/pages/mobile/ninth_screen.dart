import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/custom_font.dart';

import '../../widgets/widgets.dart';

class NinthScreen extends StatefulWidget {
  const NinthScreen({super.key});

  @override
  State<NinthScreen> createState() => _NinthScreenState();
}

class _NinthScreenState extends State<NinthScreen> {
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
      AnimatedPositioned(
          duration: const Duration(seconds: 5),
          top: _animationCompleted ? 800.sp : 0.sp,
          left: 0.sp,
          child: Image.asset(
            'assets/images/Vector.png',
            width: 300.sp,
            height: 300.sp,
          )),
      Positioned(
        bottom: 0.sp,
        right: 0.sp,
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
      Positioned(
        top: 0.sp,
        right: 0.sp,
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
            opacity: 0.2,
            child: Image.asset(
              'assets/images/Lens-right.png',
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 20.sp, right: 20.sp, left: 20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TyperAnimatedText(
                  'Privacy Policy and',
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
                  'Terms',
                  textStyle: TextStyle(
                    fontFamily: 'ClashDisplay',
                    color: const Color(0xFFD434FE),
                    fontSize: 32.sp,
                  ),
                ),
              ],
            ),
            Text(
              'Last updated on September 12, 2023.',
              style:
                  GoogleFonts.montserrat(color: Colors.white, fontSize: 12.sp),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Text(
              'Below are our privacy & policy, which outline a lot of goodies. it’s our aim to always take of our participant',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ).animate()
                        .fade(duration: 2.seconds)
                        .scale(delay: 0.seconds),
            SizedBox(height: 30.sp),
            Padding(
              padding: EdgeInsets.all(5.0.sp),
              child: Container(
                height: 550.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9).withOpacity(0.05),
                  border: Border.all(color: const Color(0xFFD434FE)),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'At getlinked tech Hackathon 1.0, we value your privacy and are committed to protecting your personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your data when you participate in our tech hackathon event. By participating in our event, you consent to the practices described in this policy.',
                        style: CustomFont.customFontWhite(12.0),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 20,
                      ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        'Licensing Policy',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFD434FE),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                      Text('Here are terms of our Standard License:',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                      SizedBox(
                        height: 20.sp,
                      ),
                      _bullet(context,
                          'The Standard License grants you a non-exclusive right to navigate and register for our event'),
                      SizedBox(
                        height: 20.sp,
                      ),
                      _bullet(context,
                          'You are licensed to use the item available at any free source sites, for your project developement'),
                      SizedBox(
                        height: 30.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Button(text: 'Register').animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Image.asset('assets/images/manLock.png',
                width: 500.sp, height: 500.sp).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
          ],
        ),
      ),
    ]);
  }

  Widget _bullet(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/mark.png').animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
        SizedBox(
          width: 20.sp,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .6,
          child: Text(text,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 20,
              style:
                  GoogleFonts.montserrat(color: Colors.white, fontSize: 10.sp)).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
        )
      ],
    );
  }
}
