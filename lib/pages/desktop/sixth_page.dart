import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/custom_font.dart';

import '../../widgets/widgets.dart';

class SixthPage extends StatefulWidget {
  const SixthPage({super.key});

  @override
  State<SixthPage> createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
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
      padding: EdgeInsets.only(top: 50.h),
      child: Stack(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          'Timeline',
                          textStyle: TextStyle(
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                            fontSize: 32.sp,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Here is the breakdown of the time we anticipate\nusing for the upcoming event.',
                      style: CustomFont.customFontWhite(16.0),
                      textAlign: TextAlign.center,
                    )
                        .animate()
                        .fade(duration: 2.seconds)
                        .scale(delay: 0.seconds),
                    const SizedBox(height: 40),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // First Column
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 110,
                        ),
                        Text(
                          'Hackathon Announcement',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          textAlign: TextAlign.end,
                        )..animate()
                            .fade(duration: 3.seconds)
                            .scale(delay: 1.seconds),
                        Text(
                          'The getlinked tech hackathon 1.0 is formally announced to the general public and teams begin to get ready to register',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14.sp),
                          textAlign: TextAlign.end,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'November 18, 2023',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const Text('   \n   '),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'Teams Registration ends',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          'Interested Participants are no longer Allowed to register',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14.sp),
                          textAlign: TextAlign.end,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'November 18, 2023',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const Text('   \n   '),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'Getlinked Hackathon 1.0 Offically Begins',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          'Accepted teams can now proceed to build their ground breaking skill driven solutions',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14.sp),
                          textAlign: TextAlign.end,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'November 18, 2023',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const Text('   \n   '),
                      ],
                    ),
                  ),

                  // Second Column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100.h,
                        child: VerticalDivider(
                          color: const Color(0xFFD434FE),
                          thickness: 2.w,
                        ),
                      )
                          .animate()
                          .fade(duration: 3.seconds)
                          .scale(delay: 2.seconds),
                      const CircleButton(text: '1')
                          .animate()
                          .fade(duration: 3.seconds)
                          .scale(delay: 2.seconds),
                      _row('2'),
                      _row('3'),
                      _row('4'),
                      _row('5'),
                      _row('6'),
                    ],
                  ),

                  // Third Column
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 160,
                        ),
                        Text(
                          'November 18, 2023',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          textAlign: TextAlign.start,
                        ),
                        const Text('   \n   '),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'Hackathon Announcement',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'The getlinked tech hackathon 1.0 is formally announced to the general public and teams begin to get ready to register',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14.sp),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'November 18, 2023',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          textAlign: TextAlign.start,
                        ),
                        const Text('   \n   '),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'Announcement of the accepted teams\nand ideas',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'All teams whom idea has been accepted into getlinked tech hackathon 1.0 2023 are formally announced',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14.sp),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'November 18, 2023',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          textAlign: TextAlign.start,
                        ),
                        const Text('   \n   '),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Demo Day',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Teams get the opportunity to pitch their projects to judges. The winner of the hackathon will also be announced on this day',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14.sp),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 150,
            )
          ],
        ),
        AnimatedPositioned(
            duration: const Duration(seconds: 4),
            top: _animationCompleted ? 190.h : 0.h,
            left: _animationCompleted ? 390.w : 0.w,
            child: Image.asset('assets/images/star pu.png')),
        AnimatedPositioned(
            duration: const Duration(seconds: 4),
            bottom: _animationCompleted ? 300.h : 0.h,
            left: _animationCompleted ? 280.w : 0.w,
            child: Image.asset('assets/images/star2.png')),
        AnimatedPositioned(
            duration: const Duration(seconds: 4),
            top: _animationCompleted ? 500.h : 0.h,
            right: _animationCompleted ? 280.w : 0.w,
            child: Image.asset('assets/images/star.png')),
      ]),
    );
  }

  Widget _row(String num) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: VerticalDivider(
            color: const Color(0xFFD434FE),
            thickness: 2.w,
          ),
        ),
        CircleButton(text: num),
      ],
    ).animate().fade(duration: 2.seconds).scale(delay: 1.seconds);
  }
}
