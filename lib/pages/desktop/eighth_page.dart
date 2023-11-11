import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon/services/white_space.dart';
import 'package:hackathon/widgets/custom_font.dart';

class EighthPage extends StatelessWidget {
  const EighthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: 200.h,
          left: 160.w,
          child: Image.asset('assets/images/star pu.png')),
      Positioned(
          top: 380.h,
          left: 800.w,
          child: Image.asset('assets/images/sata gra.png')),
      Positioned(
        top: 0.h,
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
              'assets/images/Lens-right.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Positioned(
          top: 780.h,
          left: 800.w,
          child: Image.asset('assets/images/star.png')),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 90.w, horizontal: 50.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    AnimatedTextKit(
                      totalRepeatCount: 2,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Partners and Sponsors',
                          textStyle: TextStyle(
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                            fontSize: 32.sp,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Getlinked Hackathon 1.0 is honored to have the following major\ncompanies as its partners and sponsors.',
                      style: CustomFont.customFontWhite(16.0),
                      textAlign: TextAlign.center,
                    )
                        .animate()
                        .fade(duration: 2.seconds)
                        .scale(delay: 0.seconds),
                    const WhiteSpace(height: 70),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(
                        color: const Color(0xFFD434FE), width: 1.0.w)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Liberty company.png',
                          width: 200.w,
                        )
                            .animate()
                            .fade(duration: 2.seconds)
                            .scale(delay: 0.seconds),
                        SizedBox(
                          height: 100.h,
                          child: VerticalDivider(
                            color: const Color(0xFFD434FE),
                            thickness: 3.w,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.w, horizontal: 15.h),
                          child: Image.asset('assets/images/Liberty.png',
                                  width: 200.w)
                              .animate()
                              .fade(duration: 2.seconds)
                              .scale(delay: 0.seconds),
                        ),
                        SizedBox(
                          height: 100.h,
                          child: VerticalDivider(
                            color: const Color(0xFFD434FE),
                            thickness: 3.w,
                          ),
                        ),
                        Image.asset(
                          'assets/images/Winwise.png',
                          width: 200.w,
                        )
                            .animate()
                            .fade(duration: 2.seconds)
                            .scale(delay: 0.seconds),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 180.w,
                          child: Divider(
                            color: const Color(0xFFD434FE),
                            height: 1.h,
                            thickness: 3.w,
                          ),
                        ),
                        const WhiteSpace(
                          width: 50,
                        ),
                        SizedBox(
                          width: 180.w,
                          child: Divider(
                            color: const Color(0xFFD434FE),
                            height: 1.h,
                            thickness: 3.w,
                          ),
                        ),
                        const WhiteSpace(
                          width: 50,
                        ),
                        SizedBox(
                          width: 180.w,
                          child: Divider(
                            color: const Color(0xFFD434FE),
                            height: 1.h,
                            thickness: 3.w,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/wisper.png',
                          width: 200.w,
                        )
                            .animate()
                            .fade(duration: 2.seconds)
                            .scale(delay: 0.seconds),
                        SizedBox(
                          height: 100.h,
                          child: VerticalDivider(
                            color: const Color(0xFFD434FE),
                            thickness: 3.w,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 15.h),
                          child: Image.asset('assets/images/Paybox.png',
                                  width: 200.w)
                              .animate()
                              .fade(duration: 2.seconds)
                              .scale(delay: 0.seconds),
                        ),
                        SizedBox(
                          height: 100.h,
                          child: VerticalDivider(
                            color: const Color(0xFFD434FE),
                            thickness: 3.w,
                          ),
                        ),
                        Image.asset(
                          'assets/images/Vizual.png',
                          width: 200.w,
                        )
                            .animate()
                            .fade(duration: 2.seconds)
                            .scale(delay: 0.seconds),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
