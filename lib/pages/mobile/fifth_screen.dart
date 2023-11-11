import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
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
      Padding(
        padding:
            EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 60.h, top: 60.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/star pu.png',
                  width: 20.sp,
                  height: 20.sp,
                ),
                SizedBox(
                  height: 30.sp,
                ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        'Frequently Ask',
                        textStyle: TextStyle(
                          fontFamily: 'ClashDisplay',
                          color: Colors.white,
                          fontSize: 26.sp,
                        ),
                      ),
                    ],
                  ),
                  AnimatedTextKit(
                    totalRepeatCount: 2,
                    animatedTexts: [
                      TyperAnimatedText(
                        'Question',
                        textStyle: TextStyle(
                          fontFamily: 'ClashDisplay',
                          color:  const Color(0xFFD434FE),
                          fontSize: 22.sp,
                        ),
                      ),
                    ],
                  ),
                SizedBox(
                  height: 20.sp,
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'We got answers to the questions that you might want to ask about',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 12.sp)
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
                SizedBox(
                  height: 60.sp,
                ),
                SizedBox(
                  width: 500.sp,
                  child: const Column(
                    children: [
                      _Questions(
                        title:
                            'Can I work on a project I started before the hackathon?',
                      ),                     
                      _Questions(
                        title:
                            'What happens if I need help during the hackathon?',
                      ),
                      _Questions(
                        title:
                            'What happens if I don\'t have an idea for a project?',
                      ),
                       _Questions(
                        title:
                            'Can I join a team or do I have to come\nwith one?',
                      ),
                      _Questions(
                        title:
                            'What happens after the hackathon ends',
                      ),
                      _Questions(
                        title:
                            'Can I work on a project I started before the hackathon?',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60.sp,
                ),
              ],
            ),
            Image.asset('assets/images/casual.png').animate().fade(duration: 2.seconds).scale(delay: 1.seconds),
          ],
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: _animationCompleted ? 1050.sp : 1000.sp,
        right: _animationCompleted ? 50.sp : 0.sp,
        child: Image.asset(
          'assets/images/star.png',
          width: 20.sp,
          height: 20.sp,
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: _animationCompleted ? 730.sp : 400.sp,
        right: _animationCompleted ? 250.sp : 50.sp,
        child: Image.asset(
          'assets/images/sata gra.png',
          width: 10.sp,
          height: 10.sp,
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: _animationCompleted ? 610.sp : 200.sp,
        left: _animationCompleted ? 180.sp : 140.sp,
        child: Image.asset(
          'assets/images/que.png',
          width: 50.sp,
          height: 50.sp,
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: 660.sp,
        left: _animationCompleted ? 100.sp : 80.sp,
        child: Image.asset(
          'assets/images/que1.png',
          width: 50.sp,
          height: 50.sp,
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: 660.sp,
        right: 60.sp,
        child: Image.asset(
          'assets/images/que1.png',
          width: 50.sp,
          height: 50.sp,
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: _animationCompleted ? 850.sp : 0.sp,
        left: _animationCompleted ? 80.sp : 0.sp,
        child: Image.asset(
          'assets/images/sata gra.png',
          width: 8.sp,
          height: 8.sp,
        ),
      ),
      AnimatedPositioned(
          duration: const Duration(seconds: 4),
        top: _animationCompleted ? 1060.sp : 700.sp,
        left: _animationCompleted ? 100.sp : 50.sp,
        child: Image.asset(
          'assets/images/star2.png',
          width: 15.sp,
          height: 15.sp,
        ),
      ),
    ]);
  }
}

class _Questions extends StatelessWidget {
  final String title;
  const _Questions({required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 300.sp,
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  maxLines: 3,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              Text(
                '+',
                style:
                    TextStyle(color: const Color(0xFFD434FE), fontSize: 16.sp),
              )
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Divider(
            color: const Color(0xFFD434FE),
            height: 1.h,
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
    );
  }
}
