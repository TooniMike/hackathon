import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/custom_font.dart';

class SixthScreen extends StatelessWidget {
  const SixthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: EdgeInsets.only(
            left: 10.sp, right: 10.sp, bottom: 10.sp, top: 60.sp),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Timeline',
                      textStyle: TextStyle(
                        fontFamily: 'ClashDisplay',
                        color: Colors.white,
                        fontSize: 26.sp,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Here is the breakdown of the time we anticipate using for the upcoming event.',
                  style: CustomFont.customFontWhite(12.0),
                  textAlign: TextAlign.center,
                ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds),
                const SizedBox(height: 40),
                SizedBox(
                  height: 20.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/star pu.png',
                      width: 20.sp,
                      height: 20.sp,
                    )
                        .animate()
                        .fade(duration: 3.seconds)
                        .scale(delay: 1.seconds),
                  ],
                ),
                SizedBox(
                  height: 30.sp,
                ),

                // first row
                const Announcement(
                    title: 'Hackathon Announcement',
                    details:
                        'The getlinked tech hackathon 1.0 is formally announced to the general public and teams begin to get ready to register'),
                SizedBox(
                  height: 10.sp,
                ),
                const Date(number: '1'),
                SizedBox(
                  height: 20.sp,
                ),

                // Second
                const Announcement(
                    title: 'Teams Registration begins',
                    details:
                        'Interested teams can now show their interest in the getlinked tech hackathon 1.0 2023 by proceeding to register'),
                SizedBox(
                  height: 10.sp,
                ),
                const Date(
                  number: '2',
                ),
                SizedBox(
                  height: 20.sp,
                ),

                //Third
                const Announcement(
                    title: 'Teams Registration ends',
                    details:
                        'Interested Participants are no longer Allowed to register'),
                SizedBox(
                  height: 10.sp,
                ),
                const Date(
                  number: '3',
                ),
                SizedBox(
                  height: 20.sp,
                ),

                // forth
                const Announcement(
                    title: 'Announcement of the accepted teams and ideas',
                    details:
                        'All teams whom idea has been accepted into getlinked tech hackathon 1.0 2023 are formally announced'),
                SizedBox(
                  height: 10.sp,
                ),
                const Date(
                  number: '4',
                ),
                SizedBox(
                  height: 20.sp,
                ),

                // fifth
                const Announcement(
                    title: 'Getlinked Hackathon 1.0 Offically Begins',
                    details:
                        'Accepted teams can now proceed to build their ground breaking skill driven solutions'),
                SizedBox(
                  height: 10.sp,
                ),
                const Date(
                  number: '5',
                ),
                SizedBox(
                  height: 20.sp,
                ),

                // Sixth
                const Announcement(
                    title: 'Demo Day',
                    details:
                        'Teams get the opportunity to pitch their projects to judges. The winner of the hackathon will also be announced on this day'),
                SizedBox(
                  height: 10.sp,
                ),
                const Date(
                  number: '6',
                ),
                SizedBox(
                  height: 20.sp,
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class Date extends StatelessWidget {
  final String number;
  const Date({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 25.sp,
          height: 25.sp,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFD434FE), Color(0xFF903AFF)],
            ),
          ),
          child: Center(
            child: Text(
              number,
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp),
            ),
          ),
        ),
        SizedBox(
          width: 10.sp,
        ),
        Text(
          'November 18, 2023',
          style: GoogleFonts.montserrat(
              color: const Color(0xFFD434FE),
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
      ],
    ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds);
  }
}

class Announcement extends StatelessWidget {
  final String title;
  final String details;
  const Announcement({super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 80.sp,
          child: VerticalDivider(
            color: const Color(0xFFD434FE),
            thickness: 2.sp,
          ),
        ),
        SizedBox(
          width: 10.sp,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                    color: const Color(0xFFD434FE),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
                textAlign: TextAlign.start,
              ),
              Text(
                details,
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                    color: Colors.white, fontSize: 11.sp),
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              ),
            ],
          ),
        ),
      ],
    ).animate().fade(duration: 2.seconds).scale(delay: 0.seconds);
  }
}
