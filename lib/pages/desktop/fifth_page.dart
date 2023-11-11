import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/services/white_space.dart';
import 'package:hackathon/widgets/custom_font.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
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
      padding: EdgeInsets.only(
        left: 70.w,
        right: 30.w,
      ),
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w, top: 150.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        'Frequently Ask',
                        textStyle: TextStyle(
                          fontFamily: 'ClashDisplay',
                          color: Colors.white,
                          fontSize: 32.sp,
                        ),
                      ),
                    ],
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Question',
                        textStyle: TextStyle(
                          fontFamily: 'ClashDisplay',
                          color: const Color(0xFFD434FE),
                          fontSize: 32.sp,
                        ),
                      ),
                    ],
                  ),
                  const WhiteSpace(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'We got answers to the questions that you might\nwant to ask about',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14.sp),
                        ),
                        TextSpan(
                          text: ' getlinked Hackathon 1.0',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                  const WhiteSpace(
                    height: 20,
                  ),
                  SizedBox(
                    width: 500.w,
                    child: Column(
                      children: [
                        _fax('Can I work on a project I started before the hackathon?'),
                        _fax('What happens if I need help during the hackathon?'),
                       _fax('What happens if I don\'t have an idea for a project?'),
                       _fax('Can I join a team or do I have to come with one?'),
                       _fax('What happens after the hackathon ends'),
                       _fax('Can I work on a project I started before the hackathon?'),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/casual.png',
                width: 550.w,
                height: 550.h,
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
            top: _animationCompleted ? 90.h : 10.h,
            left: 0.w,
            child: Image.asset('assets/images/star pu.png', width: 15.w, height: 15.h,)),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
            top: _animationCompleted ? 105.h : 10.h,
            right: _animationCompleted ? 250.w : 10.w,
            child: Image.asset('assets/images/sata gra.png', width: 15.w, height: 15.h,)),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
            top: _animationCompleted ? 210.h : 0.h,
            right: 550.w,
            child: Image.asset('assets/images/sata gra.png', width: 15.w, height: 15.h,)),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
            top: _animationCompleted ? 60.h : 0.h,
            right: 315.w,
            child: Image.asset('assets/images/que.png')),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
            top: _animationCompleted ? 120.h : 0.h,
            right: 180.w,
            child: Image.asset('assets/images/que1.png').animate().fade(duration: 2.seconds).scale(delay: 0.seconds),),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
            top: _animationCompleted ? 120.h : 0.h,
            right: 450.w,
            child: Image.asset('assets/images/que1.png').animate().fade(duration: 2.seconds).scale(delay: 0.seconds),),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
            top: _animationCompleted ? 410.h : 0.h,
            right: 500.w,
            child: Image.asset('assets/images/star2.png' , width: 15.w, height: 15.h,).animate().fade(duration: 3.seconds).scale(delay: 2.seconds),),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
            bottom: 0.h,
            right: _animationCompleted ? 150.w : 0.w,
            child: Image.asset('assets/images/star.png' , width: 15.w, height: 15.h,).animate().fade(duration: 3.seconds).scale(delay: 2.seconds),),
      ]),
    );
  }

  Widget _fax(String title) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: CustomFont.customFontWhite(16.0),
            ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
            Text(
              '+',
              style: TextStyle(color: const Color(0xFFD434FE), fontSize: 16.sp),
            ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
          ],
        ),
        const WhiteSpace(
          height: 10,
        ),
        Divider(
          color: const Color(0xFFD434FE),
          height: 1.h,
        ),
        const WhiteSpace(
          height: 20,
        ),
      ],
    );
  }
}
