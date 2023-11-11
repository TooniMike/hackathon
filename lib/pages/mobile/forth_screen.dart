import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/widgets.dart';

class ForthScreen extends StatefulWidget {
  const ForthScreen({super.key});

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
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
        bottom: -400.sp,
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
        right: 1.sp,
        top: -150.sp,
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
      Padding(
        padding:
            EdgeInsets.only(left: 30.w, right: 30.w, bottom: 60.h, top: 60.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/star pu.png',
                  width: 20.w,
                  height: 20.h,
                ).animate().fade(duration: 3.seconds).scale(delay: 0.seconds),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
            Image.asset(
              'assets/images/sales.png',
            ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Judging Criteria',
                  style: TextStyle(
                      fontFamily: 'ClashDisplay',
                      fontSize: 26.sp,
                      color: Colors.white),
                ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                AnimatedTextKit(
                  totalRepeatCount: 2,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Key attributes',
                      textStyle: TextStyle(
                        fontFamily: 'ClashDisplay',
                        color: const Color(0xFFD434FE),
                        fontSize: 22.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                jointText('Innovation and Creativity:', 'Evaluate the uniqueness and creativity of the solution. Consider whether it addresses a real-world problem in a novel way or introduces innovative features.'),                
                jointText('Functionality:', 'Assess how well the solution works. Does it perform its intended functions effectively and without major issues? Judges would consider the completeness and robustness of the solution.'),
                jointText('Impact and Relevance:', 'Determine the potential impact of the solution in the real world. Does it address a significant problem, and is it relevant to the target audience? Judges would assess the potential social, economic, or environmental benefits.'),
                jointText('Technical Complexity:', 'Evaluate the technical sophistication of the solution.\nJudges would consider the complexity of the code, the use of advanced\ntechnologies or algorithms, and the scalability of the solution.'),
                jointText('Adherence to Hackathon Rules:', 'Judges will Ensure that the team adhered\nto the rules and guidelines of the hackathon, including deadlines, use of\nspecific technologies or APIs, and any other competition-specific requirements.'),
                SizedBox(height: 30.sp),
              ],
            ),
            const Button(text: 'Register').animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
          ],
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: _animationCompleted ? 1250.sp : 0.sp,
        right: _animationCompleted ? 50.sp : 0.sp,
        child: Image.asset(
          'assets/images/star.png',
          width: 15.sp,
          height: 15.sp,
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: _animationCompleted ? 250.sp : 50.sp,
        right: _animationCompleted ? 250.sp : 50.sp,
        child: Image.asset(
          'assets/images/star2.png',
          width: 20.sp,
          height: 20.sp,
        ),
      ),
    ]);
  }

  Widget jointText(String title, String text) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: title,
                  style: GoogleFonts.montserrat(
                      color: const Color(0xFFFF26B9),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                text:
                    ' $text',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
