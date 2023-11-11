import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon/widgets/custom_font.dart';

class EightScreen extends StatelessWidget {
  const EightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AnimatedTextKit(
            totalRepeatCount: 2,
            animatedTexts: [
              TyperAnimatedText(
                'Partners and Sponsors',
                textStyle: TextStyle(
                  fontFamily: 'ClashDisplay',
                  color: Colors.white,
                  fontSize: 25.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            'Getlinked Hackathon 1.0 is honored to have the following major companies as its partners and sponsors.',
            style: CustomFont.customFontWhite(14.0),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
          ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
          SizedBox(height: 20.sp),
          Padding(
            padding: EdgeInsets.only(bottom: 60.sp),
            child: Container(
              width: MediaQuery.of(context).size.width * .85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                      color: const Color(0xFFD434FE), width: 1.0.sp)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.sp,
                  ),
                  _sponsors('Liberty company', 'Liberty', 'Winwise'),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 70.sp,
                        child: Divider(
                          color: const Color(0xFFD434FE),
                          height: 1.sp,
                          thickness: 2.sp,
                        ),
                      ),
                      SizedBox(
                        width: 10.sp,
                      ),
                      SizedBox(
                        width: 70.sp,
                        child: Divider(
                          color: const Color(0xFFD434FE),
                          height: 1.sp,
                          thickness: 2.sp,
                        ),
                      ),
                      SizedBox(
                        width: 10.sp,
                      ),
                      SizedBox(
                        width: 70.sp,
                        child: Divider(
                          color: const Color(0xFFD434FE),
                          height: 1.sp,
                          thickness: 2.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  _sponsors('wisper', 'Paybox', 'Vizual'),
                  SizedBox(
                    height: 20.sp,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ]);
  }

  Widget _sponsors(String image1, String image2, String image3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/$image1.png',
          width: 70.sp,
        ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
        SizedBox(
          height: 60.sp,
          child: VerticalDivider(
            color: const Color(0xFFD434FE),
            thickness: 2.sp,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15.0.sp),
          child: Image.asset('assets/images/$image2.png', width: 70.sp)
              .animate()
              .fade(duration: 2.seconds)
              .scale(delay: 0.seconds),
        ),
        SizedBox(
          height: 60.sp,
          child: VerticalDivider(
            color: const Color(0xFFD434FE),
            thickness: 2.sp,
          ),
        ),
        Image.asset(
          'assets/images/$image3.png',
          width: 70.sp,
        ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
      ],
    );
  }
}
