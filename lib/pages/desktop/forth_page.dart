import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/services/white_space.dart';
import 'package:hackathon/widgets/button.dart';

class ForthPage extends StatefulWidget {
  const ForthPage({super.key});

  @override
  State<ForthPage> createState() => _ForthPageState();
}

class _ForthPageState extends State<ForthPage> {
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
        top: 50.h,
      ),
      child: Stack(children: [
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
          top: _animationCompleted ? 125.h : 50.h,
          left: _animationCompleted ? 100.w : 0.w,
          child: Image.asset(
            'assets/images/Ellipse 1.png',
            width: 100.w,
            height: 100.h,
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
          top: _animationCompleted ? 0.h : 80.h,
          left: 0.h,
          child: Image.asset(
            'assets/images/Lens-left.png',
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
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/sales.png',
                width: 550.w,
                height: 550.h,
              ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
              SizedBox(
                width: MediaQuery.of(context).size.width * .55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 50.0.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                'Judging Criteria',
                                textStyle: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  color: Colors.white,
                                  fontSize: 32.sp,
                                ),
                              ),
                            ],
                          ),
                          Text('Key attributes',
                              style: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 32.sp,
                                  color: const Color(0xFFD434FE))),
                          WhiteSpace(height: 20.h),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Innovation and Creativity:',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xFFFF26B9),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      ' Evaluate the uniqueness and creativity of the solution. Consider whether it addresses a real-world problem in a novel way or introduces innovative features.',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ),
                          const WhiteSpace(
                            height: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Functionality:',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xFFFF26B9),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      ' Assess how well the solution works. Does it perform its intended functions effectively and without major issues? Judges would consider the completeness and robustness of the solution.',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ),
                          const WhiteSpace(
                            height: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Impact and Relevance:',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xFFFF26B9),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      ' Determine the potential impact of the solution in the real world. Does it address a significant problem, and is it relevant to the target audience? Judges would assess the potential social, economic, or environmental benefits.',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ),
                          const WhiteSpace(
                            height: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Technical Complexity:',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xFFFF26B9),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      ' Evaluate the technical sophistication of the solution. Judges would consider the complexity of the code, the use of advanced technologies or algorithms, and the scalability of the solution.',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ),
                          const WhiteSpace(
                            height: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Adherence to Hackathon Rules:',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xFFFF26B9),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      ' Judges will Ensure that the team adhered to the rules and guidelines of the hackathon, including deadlines, use of specific technologies or APIs, and any other competition-specific requirements.',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ),
                          const WhiteSpace(
                            height: 40,
                          ),
                          const Button(text: 'Register'),
                          const WhiteSpace(
                            height: 140,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
          top: _animationCompleted ? 300.h : 30.h,
          left: 300.w,
          child: Image.asset('assets/images/star2.png' , width: 15.w, height: 15.h,),
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
          top: 0.h,
          left: _animationCompleted ? 200.w : 20.w,
          child: Image.asset('assets/images/star pu.png' , width: 20.w, height: 20.h,),
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 4),
          top: _animationCompleted ? 350.h : 50.h,
          right: 800.w,
          child: Image.asset('assets/images/star.png' , width: 20.w, height: 20.h,),
        ),
      ]),
    );
  }
}
