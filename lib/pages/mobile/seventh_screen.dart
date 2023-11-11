import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SeventhScreen extends StatefulWidget {
  const SeventhScreen({super.key});

  @override
  State<SeventhScreen> createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(children: [
          Positioned(
            right: 0.sp,
            top: 0.sp,
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
            padding: EdgeInsets.only(bottom: 250.sp, top: 10.sp, left: 10.sp, right: 10.sp),
            child: Column(
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/star pu.png',
                      width: 20.sp,
                      height: 20.sp,
                    ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                    SizedBox(
                      height: 30.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText(
                                'Prizes and',
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
                                'Rewards',
                                textStyle: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  color: const Color(0xFFD434FE),
                                  fontSize: 32.sp,
                                ),
                              ),
                            ],
                          ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: Text(
                        'Highlight of the prizes or rewards for winners and for participants.',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 14.sp),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Image.asset('assets/images/cup.png',
                        width: 320.sp, height: 320.sp).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                    SizedBox(
                      height: 40.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 1150.sp,
            right: 50.sp,
            child: Image.asset(
              'assets/images/star.png',
              width: 20.sp,
              height: 20.sp,
            ),
          ),
          Positioned(
            top: 250.sp,
            right: 250.sp,
            child: Image.asset(
              'assets/images/star2.png',
              width: 20.sp,
              height: 20.sp,
            ),
          ),

          // second position
          Positioned(
            top: 640.sp,
            left: 10.sp,
            child: Container(
              height: 120.sp,
              width: 80.sp,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFD434FE)),
                color: const Color(0xFFD434FE).withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '2nd',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Runner',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    'N300,000',
                    style: GoogleFonts.montserrat(
                        color: const Color(0xFFD434FE),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.sp,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 580.sp,
            left: 6.sp,
            child: Image.asset(
              'assets/images/silver_medal 1.png',
              width: 90.sp,
              height: 90.sp,
            ),
          ),

          //first Position
          Positioned(
            top: 610.sp,
            left: 125.sp,
            child: Container(
              height: 150.sp,
              width: 100.sp,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF903AFF)),
                color: const Color(0xFF903AFF).withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '1st',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Runner',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 14.sp,
                      )),
                  Text('N400,000',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFF903AFF),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 30.sp,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 525.sp,
            left: 115.sp,
            child: Image.asset(
              'assets/images/gold_medal 1.png',
              width: 120.sp,
              height: 120.sp,
            ),
          ),

          // Third position
          Positioned(
              top: 640.sp,
              right: 0.sp,
              child: Container(
                height: 120.sp,
                width: 80.sp,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD434FE)),
                  color: const Color(0xFFD434FE).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '3rd',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Runner',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14.sp,
                        )),
                    Text('N150,000',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFD434FE),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30.sp,
                    )
                  ],
                ),
              )),
          Positioned(
              top: 580.sp,
              right: -5.sp,
              child: Image.asset(
                'assets/images/bronze_medal 1.png',
                width: 90.sp,
                height: 90.sp,
              )),
        ]),
      ],
    );
  }
}

