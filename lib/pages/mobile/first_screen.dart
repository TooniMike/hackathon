import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/widgets.dart';
import '../../widgets/custom_font.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
        top: -60.sp,
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
              'assets/images/flare_len01.png',
              height: 500.sp,
              width: 500.sp,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Positioned(
        top: 10.sp,
        right: 20.sp,
        child: AnimatedTextKit(
          totalRepeatCount: 2,
          animatedTexts: [
            TyperAnimatedText(
              'Igniting a Revolution in HR Innovation',
              textStyle: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.sp, left: 0.sp, right: 0.sp),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'getlinked Tech',
                  style: TextStyle(
                      fontFamily: 'ClashDisplay',
                      fontSize: 26.sp,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                )
                    .animate()
                    .fade(duration: 2.seconds)
                    .scale(delay: 500.milliseconds),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Hackathon ',
                          curve: Curves.bounceIn,
                          speed: const Duration(milliseconds: 700),
                          textStyle: TextStyle(
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                            fontSize: 30.sp,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '1.0',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 30.sp,
                        color: const Color(0xFFD434FE),
                      ),
                    ),
                    Image.asset(
                      'assets/images/chain.png',
                      width: 40.sp,
                      height: 40.sp,
                    )
                        .animate()
                        .fade(duration: 2.seconds)
                        .scale(delay: 1.seconds),
                    Image.asset(
                      'assets/images/light.png',
                      width: 40.sp,
                      height: 40.sp,
                    )
                        .animate()
                        .fade(duration: 2.seconds)
                        .scale(delay: 1.seconds),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w)
                      .copyWith(top: 15.h),
                  child: Text(
                    'Participate in getlinked tech Hackathon 2023 stand a chance to win a Big prize',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: CustomFont.customFontWhite(14.0),
                    textAlign: TextAlign.center,
                  ).animate()
                                .fadeIn(duration: 2.seconds)
                                .scale(delay: 1.seconds),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                const Button(text: 'Register')
                    .animate()
                    .fadeIn(duration: 3.seconds)
                    .scale(delay: 2.seconds),
                SizedBox(
                  height: 20.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '00',
                      style: GoogleFonts.unicaOne(
                          color: Colors.white, fontSize: 60.sp),
                    ),
                    Text('H', style: CustomFont.customFontWhite(10)),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Text(
                      '00',
                      style: GoogleFonts.unicaOne(
                          color: Colors.white, fontSize: 60.sp),
                    ),
                    Text('M', style: CustomFont.customFontWhite(10)),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Text(
                      '00',
                      style: GoogleFonts.unicaOne(
                          color: Colors.white, fontSize: 60.sp),
                    ),
                    Text('S', style: CustomFont.customFontWhite(10)),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/man.png',
          ).animate().fade(duration: 2.seconds).scale(delay: 1.seconds),
        ],
      ),
      AnimatedPositioned(
        duration: const Duration(seconds: 4),
        bottom: _animationCompleted ? 0.sp : 60.sp,
        right: 0.sp,
        left: 0.sp,
        child: Image.asset(
          'assets/images/network.png',
          width: 400.sp,
          height: 400.sp,
        ).animate().fade(duration: 2.seconds).scale(delay: 1.seconds),
      ),
      AnimatedPositioned(
        duration: const Duration(seconds: 4),
        top: 30.sp,
        right: _animationCompleted ? 30.sp : 0.sp,
        child: Image.asset(
          'assets/images/Vector 4.png',
          width: 150.sp,
        ),
      ),
      AnimatedPositioned(
        duration: const Duration(seconds: 4),
        left: _animationCompleted ? 130.sp : 30.sp,
        top: _animationCompleted ? 50.sp : 0.sp,
        child: Image.asset(
          'assets/images/star.png',
          width: 15.sp,
          height: 15.sp,
        ),
      ),
      AnimatedPositioned(
        duration: const Duration(seconds: 4),
        top: _animationCompleted ? 50.sp : 0.sp,
        right: _animationCompleted ? 60.sp : 10.sp,
        child: Padding(
          padding: EdgeInsets.only(right: 20.sp),
          child: Image.asset(
            'assets/images/star2.png',
            width: 15.sp,
            height: 15.sp,
          ),
        ),
      ),
      AnimatedPositioned(
        duration: const Duration(seconds: 4),
        top: _animationCompleted ? 60.sp : 30.sp,
        right: 90.sp,
        child: Image.asset(
          'assets/images/Bulb.png',
          width: 30.sp,
          height: 30.sp,
        ).animate().fade(duration: 2.seconds).scale(delay: 2.seconds),
      ),
    ]);
  }
}
